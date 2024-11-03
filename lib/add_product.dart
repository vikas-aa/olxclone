import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_clone/controller/home_controller.dart';

import 'package:olx_clone/dropdoown.dart';


class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
      Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(builder:(ctrl)=>Scaffold(
      appBar: AppBar(
        title: const Text('SELL PRODUCT'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:const  EdgeInsets.all(10),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Add New ",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigoAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
                 const SizedBox(height: 10),

                // Button to pick images from the gallery
                ElevatedButton(
                  onPressed: () {
                    ctrl.pickImage();
                  },
                   child:  Text(''),
  style: ElevatedButton.styleFrom(
    shape: const CircleBorder(), // Make the button circular
    padding: const EdgeInsets.all(50), 
    foregroundColor: Colors.white, 
  ),
                ),

                // Display selected images
                ctrl.images != null && ctrl.images!.isNotEmpty
                    ? Wrap(
                        spacing: 10,
                        children: ctrl.images!.map((image) {
                          return Image.file(
                            File(image.path),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          );
                        }).toList(),
                      )
                    : const Text('No images selected'),
              TextField(
                controller: ctrl.productNameCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text('Product Name'),
                  hintText: 'Enter the product Name',
                ),
              ),
             const  SizedBox(height: 10),
              TextField(
                controller: ctrl.productDescriptionCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label:const  Text('Product Description'),
                  hintText: 'Enter the product Description',
                
                ),
                maxLines: 4,
              ),
             
             const  SizedBox(height: 10),
              TextField(
                controller: ctrl.productPriceCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label:const  Text('Product Price'),
                  hintText: 'Enter the product Price',
                ),
              ),
            
             Row(
               children: [
               
                  Flexible(child:
                   Dropdown(
                    items:const  ['brand1','brand2','brand3'], 
                    selectedItemText: ctrl.brand,
                    onSelected: (selectedValue) {
                      ctrl.brand = selectedValue ?? 'un branded';
                      ctrl.update();
                    },
                    )),
               ],
             ),
           
              
              const SizedBox(height: 10,),
               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  foregroundColor: Colors.white
                ),
                onPressed: () {
                ctrl.addProduct();

               }, child:const Text('Add Product')),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
