import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_clone/controller/home_controller.dart';
import 'package:olx_clone/productcard.dart';
import 'package:olx_clone/productdescription.dart';
class FourthPage
 extends StatelessWidget {
  const FourthPage
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) =>
    Scaffold(
          body:  GridView.builder(
                  
                  gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: ctrl.products.length,
                  itemBuilder: (context, index) {
                 return ProductCard(
  name: ctrl.products[index].name ?? 'No Name',
  description: ctrl.products[index].name ?? 'No Name',
  price: ctrl.products[index].price ?? 0,
  imageUrl: (ctrl.products[index].images?.isNotEmpty ?? false)
      ? ctrl.products[index].images!.first // Get the first image URL if available
      : 'https://via.placeholder.com/150', // Use a placeholder image if no images are available
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDescription(
          index: index, 
        ),
    )
    );
  },
);

                  },
                ),
              ),
            
          );
       

  
  }
}