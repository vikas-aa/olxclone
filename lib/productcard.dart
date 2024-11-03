import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl; // Add this line to accept the image URL
  final VoidCallback onTap; // Accept the onTap callback
  final String description;
  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl, // Make imageUrl required
    required this.onTap,
    required this.description // Make onTap required
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the onTap function when the card is tapped
      child: Card(
        elevation: 5, // Add elevation for better card visibility
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image Section
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0), // Optional: to make the image rounded
                child: Image.network(
                  imageUrl, // Use the imageUrl field to display the image
                  height: 150, // Adjust the height as per your need
                  width: double.infinity,
                  fit: BoxFit.cover, // Adjust the image to fit the container
                  errorBuilder: (context, error, stackTrace) {
                    // In case the image fails to load, show a placeholder
                    return const Icon(Icons.broken_image, size: 100);
                  },
                ),
              ),
             const  SizedBox(height: 10), // Space between the image and text

              // Name and Price Section
              Text(
                name,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            const   SizedBox(height: 8),
              Text(
                'Rs: $price',
                style: const TextStyle(fontSize: 16, color: Colors.green),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
              const  SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.green),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            
              
            ],
          ),
        ),
      ),
    );
  }
}
