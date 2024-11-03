import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_clone/about_us.dart';
import 'package:olx_clone/controller/home_controller.dart';
import 'package:olx_clone/productcard.dart';
import 'package:olx_clone/productdescription.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctrl) => Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(17.0),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                  controller: ctrl.searchCtrl,
                 
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             const  Text(
                'Browse Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: const Color.fromARGB(97, 165, 119, 119),
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final icons = [
                        Icons.car_rental_outlined,
                        Icons.home,
                        Icons.mobile_friendly,
                        Icons.work,
                        Icons.collections,
                        Icons.bike_scooter,
                        Icons.electric_bike,
                        Icons.comment,
                        Icons.mail,
                        Icons.fingerprint_rounded,
                      ];

                      final names = [
                        'Cars',
                        'Properties',
                        'Mobile',
                        'Jobs',
                        'Fashion',
                        'Bikes',
                        'Electronic',
                        'Commercial',
                        'Furniture',
                        'pets',
                      ];

                      final pages = [
                        HousePage(),
                        FavoritesPage(),
                        ProfilePage(),
                        CartPage(),
                        LikedPage(),
                        SettingsPage(),
                        CameraPage(),
                        PhonePage(),
                        EmailPage(),
                        MapPage(),
                      ];

                      return Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => pages[index],
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue[100],
                                ),
                                padding: EdgeInsets.all(16),
                                child: Icon(
                                  icons[index],
                                  size: 30,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                           const  SizedBox(height: 5),
                            Text(
                              names[index],
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            const   SizedBox(height: 16), 
             const  Text(
                'Recommended Things',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
             const  SizedBox(height: 8),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  
                  gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: ctrl.products.length,
                  itemBuilder: (context, index) {
                 return ProductCard(
  name: ctrl.filteredProducts[index].name ?? 'No Name',
  description: ctrl.filteredProducts[index].name ?? 'No Name',
  price: ctrl.filteredProducts[index].price ?? 0,
  imageUrl: (ctrl.filteredProducts[index].images?.isNotEmpty ?? false)
      ? ctrl.filteredProducts[index].images!.first // Get the first image URL if available
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
            ],
          ),
        ),
      ),
    );
  }
}


class HousePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('Cars')),
      body:  Column(
              children: [
                ListTile(
                  title: const Text('For Sales : Cars'),
       
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('For Rent: Cars'),
            
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
               
                  
              ]
      )
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('Properties')),
      body:Column(
              children: [
                ListTile(
                  title: const Text('Foe Sales: Houses & Apartments'),
             
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('For Rents : Houses & Apartments'),
              
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Lands & Plots'),
            
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: const Text('For Rent: Shops & Offices'),
        
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()),
            );
                  },
                ),
                 ListTile(
                  title: const Text('For Sales:Shops & Offices'),
               
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()));
                  },
                ), 
              ]
      )
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const  Text('Mobiles')),
      body: Column(
              children: [
                ListTile(
                  title: const Text('Mobile Phone'),
              
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Accessories'),
               
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Tablets'),
               
                  onTap: () {
                    
                  },
                ),
             
              ]
      )
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('Jobs')),
      body: Column(
              children: [
                ListTile(
                  title: const Text('Data Entry'),
            
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Sales & Marketing'),
                
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Driver'),
                
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: const Text('Delivery & Collection'),
                
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()),
            );
                  },
                ),
                 ListTile(
                  title: const Text('Cook'),
                
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()));
                  },
                ), 
              ]
      ),
    );
  }
}

class LikedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('Fashions')),
      body: Column(
              children: [
                ListTile(
                  title: const Text('Men'),
              
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Women'),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('kids'),
             
                  onTap: () {
                    
                  },
                ),
              
              ]
      )
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bikes')),
      body: Column(
              children: [
                ListTile(
                  title: const Text('Motorcycles'),
       
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Scooters'),
              
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Spares Parts'),
             
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: const Text('Bicycles'),
              
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()),
            );
                  },
                ),
           
              ]
      )
    );
  }
}

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('Electronics')),
      body: Column(
              children: [
                ListTile(
                  title: const Text('Fridges'),
                 
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Games & Entertainments'),
     
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Computer Accessories'),
               
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: const Text('Washing Machines'),
          
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()),
            );
                  },
                ),
                 ListTile(
                  title: const Text('Laptops'),
              
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()));
                  },
                ), 
              ]
      )
    );
  }
}

class PhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('Commercial Vehicals')),
      body:Column(
              children: [
                ListTile(
                  title: const Text('Commercial & Other Vehicles'),
              
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Sparse Parts'),
           
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
               
               
              ]
      )
    );
  }
}

class EmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('Furniture')),
      body: Column(
              children: [
                ListTile(
                  title: const Text('Sofa & Dining'),
       
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Beds & Wardrobes'),
             
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Home Decor & Garden'),
             
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: const Text('Kids Furniture'),
                
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()),
            );
                  },
                ),
                 ListTile(
                  title: const Text('Other Houslehold Items'),
             
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()));
                  },
                ), 
              ]
      )
    );
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('Pets')),
      body: Column(
              children: [
                ListTile(
                  title: const Text('Fishes & Aquarium'),
               
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Pet Food & Accessories'),
             
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Pet Food & Accessories'),
               
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: const Text('Other Parts'),
                
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()),
            );
                  },
                ),
                
              ]
      )
      
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FirstPage(),
  ));
}
