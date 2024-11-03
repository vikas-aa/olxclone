import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:olx_clone/model/product.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  TextEditingController productNameCtrl = TextEditingController();
  TextEditingController productDescriptionCtrl = TextEditingController();
  TextEditingController productPriceCtrl = TextEditingController();
   TextEditingController searchCtrl = TextEditingController(); 
  String brand = 'unbranded';
  List<XFile>? images = [];
  final ImagePicker picker = ImagePicker();
  List<Product> products = [];
  List<Product> filteredProducts = [];


  @override
  Future<void> onInit() async {
    productCollection = firestore.collection('products');
      searchCtrl.addListener(() => filterProducts());
    await fetchProducts();
    super.onInit();
  }

 Future<void> pickImage() async {
  
  final XFile? selectedImage = await picker.pickImage(source: ImageSource.gallery);
  if (selectedImage != null) {
    images = [selectedImage]; 
    update(); 
  }
}

  
  Future<List<String>> uploadImages() async {
    List<String> downloadUrls = []; 
    if (images != null && images!.isNotEmpty) {
      try {
        for (XFile image in images!) {
          String fileName = image.name;
          Reference firebaseStorageRef =
              FirebaseStorage.instance.ref().child('product_images/$fileName');
          await firebaseStorageRef.putFile(File(image.path));
          String downloadUrl = await firebaseStorageRef.getDownloadURL();
          downloadUrls.add(downloadUrl); 
          print('Image uploaded: $downloadUrl');
        }
      } catch (e) {
        Get.snackbar('Error', 'Failed to upload images: $e',
            colorText: Colors.redAccent);
        print(e);
      }
    }
    return downloadUrls; 
  }

  Future<void> addProduct() async {
    try {
      DocumentReference doc = productCollection.doc();
      Product product = Product(
        id: doc.id,
        name: productNameCtrl.text,
        description: productDescriptionCtrl.text,
        price: double.tryParse(productPriceCtrl.text) ?? 0.0,
        brand: brand,
      );

  
      List<String> imageUrls = await uploadImages();
      if (imageUrls.isNotEmpty) {
        product.images = imageUrls; 
      }

      final productJson = product.toJson();
      await doc.set(productJson);
      Get.snackbar('Success', 'Product added successfully',
          colorText: const Color.fromARGB(255, 11, 196, 103),
          duration: const  Duration(seconds: 3));
      setValusDefault();
    } catch (e) {
      Get.snackbar('Error', e.toString(), colorText: Colors.red);
      print(e);
    }
  }

  Future<void> fetchProducts() async {
    try {
      QuerySnapshot productSnapshot = await productCollection.get();
      final List<Product> retrieveProducts = productSnapshot.docs.map((doc) =>
          Product.fromJson(doc.data() as Map<String, dynamic>)).toList();

      products.clear();
      products.assignAll(retrieveProducts);
       filteredProducts.assignAll(retrieveProducts); 
      Get.snackbar('Success', 'Products fetched successfully',
          colorText: Colors.green);
    } catch (e) {
      Get.snackbar('Error', e.toString(), colorText: Colors.redAccent);
      print(e);
    } finally {
      update();
    }
  }
  
  void filterProducts() {
    String query = searchCtrl.text.toLowerCase();

    if (query.isEmpty) {
      filteredProducts.assignAll(products); 
    } else {
      filteredProducts.assignAll(products.where((product) {
        return product.name?.toLowerCase().contains(query) ?? false;
      }).toList());
    }
    update(); // Rebuild UI
  }

  Future<void> deleteProduct(String id) async {
    try {
      await productCollection.doc(id).delete();
      await fetchProducts(); 
      update();
      Get.snackbar('Success', 'Product Deleted Successfully', colorText: Colors.redAccent);
    } catch (e) {
      Get.snackbar('Error', e.toString(), colorText: Colors.redAccent);
      print(e);
    }
  }

  void setValusDefault() {
    productNameCtrl.clear();
    productDescriptionCtrl.clear();
    productPriceCtrl.clear();
    brand = 'unbranded';
    images = []; 
    update();
  }
}
