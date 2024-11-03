import 'package:flutter/material.dart';
class MorePage
 extends StatelessWidget {
  const MorePage
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
              children: [
                ListTile(
                  title: const Text('cars'),
                  leading: const Icon(Icons.car_rental),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Properties'),
                  leading: const Icon(Icons.home_max_outlined),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Mobile'),
                  leading: const Icon(Icons.mobile_off_rounded),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Jobs'),
                  leading: const Icon(Icons.join_full),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                 ListTile(
                  title: const Text('Bikes'),
                  leading: const Icon(Icons.bike_scooter),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Electronics & Application'),
                  leading: const Icon(Icons.electric_bike),
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: const Text('Commercial Vehicles & Spares'),
                  leading: const Icon(Icons.app_settings_alt_rounded),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                 ListTile(
                  title: const Text('Furniture'),
                  leading: const Icon(Icons.table_bar),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Fashion'),
                  leading: const Icon(Icons.info),
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: const Text('Book, Sports & Hobbies'),
                  leading: const Icon(Icons.app_settings_alt_rounded),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                 
                ListTile(
                  title: const Text('Pets'),
                  leading: const Icon(Icons.info),
                  onTap: () {
                    
                  },
                ),
                  ListTile(
                  title: const Text('Services'),
                  leading: const Icon(Icons.design_services),
                  onTap: () {
                    
                  },
                ),
              ]
      )
    );
  }
}