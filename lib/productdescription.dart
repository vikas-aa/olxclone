import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_clone/controller/home_controller.dart';

class ProductDescription extends StatelessWidget {
  final int index; // Pass the index to get the product details

  const ProductDescription({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctrl) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Product Details',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image section with dynamic product image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
              child: Image.network(
  ctrl.products[index].images != null && ctrl.products[index].images!.isNotEmpty
      ? ctrl.products[index].images!.first // Should be a valid URL
      : 'https://via.placeholder.com/150', // Placeholder image
  fit: BoxFit.contain,
  width: double.infinity,
  height: 200,
),

              ),
              const SizedBox(height: 20),
              
              // Product name
              Text(
                ctrl.products[index].name ?? 'No Name',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              
              // Product description
              Text(
                ctrl.products[index].description ?? 'No Description',
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),
              
              // Product price
              Text(
                'Rs: ${ctrl.products[index].price?.toString() ?? '0.0'}',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              
              // Billing address input
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Enter Your Billing Address',
                ),
              ),
              const SizedBox(height: 20),
              
              // Purchase button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.indigoAccent,
                  ),
                  child: const Text(
                    'Purchase',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    // Add purchase functionality here
                  },
                ),
              ),
              const SizedBox(height: 20),
              
              // Chart button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.indigoAccent,
                  ),
                  child: const Text(
                    'Chart',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    // Add chart functionality here
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
