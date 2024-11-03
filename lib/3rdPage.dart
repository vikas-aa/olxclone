import 'package:flutter/material.dart';
import 'package:olx_clone/add_product.dart';
import 'package:olx_clone/more_category.dart';
class ThridPage extends StatelessWidget {
  const ThridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("What are you offering"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 230, 231, 233), 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), 
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        actions: [],
      ),
      body: Scrollbar(
          child: SingleChildScrollView(
        child: Positioned(
          top: 50,
          left: 0,
          
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      
                   child: InkWell(
                        onTap: (){
                           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProductPage()),
            );
                        },
                        child:
                         Stack(
                                   children: [
                                  
                      Opacity(
                        opacity: 0.7, 
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'lib/assets/cars.jpg', 
                            fit: BoxFit.cover, 
                                                
                                              
                          ),
                        ),
                      ), Center(
                            child: Text('Cars',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                                   ]
                        ),
                        
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                    ),
                    
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProductPage()),
            );
                          },
                         child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/assets/mobile.jpeg', 
                              fit: BoxFit.cover, 
                                                    height: 100,
                            ),
                          ),
                        ),  Center(
                              child: Text('Mobiles',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                      Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProductPage()),
            );
                          },
                           child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/assets/bikes.jpg', 
                              fit: BoxFit.cover, 
                                                  
                            ),
                          ),
                        ),  Center(
                              child: Text('Bikes',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                      Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProductPage()),
            );
                          },
                           child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/assets/cv.jpg', 
                              fit: BoxFit.cover, 
                                                  height: 100,
                            ),
                          ),
                        ), Center(
                              child: Text('Commercial Vehicles & Spares',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                 ],
                ),
                 Column(
                  children: [
                    Container(
                      
                      child: InkWell(
                        onTap: (){
                               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProductPage()),
            );
                        },
                        child:
                         Stack(
                                   children: [
                                  
                      Opacity(
                        opacity: 0.7, 
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'lib/assets/ghar.jpg', 
                            fit: BoxFit.cover, 
                                                height: 100,
                          ),
                        ),
                      ), Center(
                            child: Text('Properties',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                                   ]
                        ),
                        
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                    ),
                    
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProductPage()),
            );
                          },
                         child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/assets/job.jpg', 
                              fit: BoxFit.cover, 
                                                   height: 100,
                            ),
                          ),
                        ),  Center(
                              child: Text('Jobs',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                      Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProductPage()),
            );
                          },
                           child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/assets/Ea.jpg', 
                              fit: BoxFit.cover, 
                            height: 100,
                            ),
                          ),
                        ),  Center(
                              child: Text('Electronic & Appliances',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                      Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                             
                           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MorePage()
              )
                           );
                          },
                          
                           child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/assets/more.png', 
                              fit: BoxFit.cover, 
                            width: 150,
                              
                              
                            ),
                          ),
                        ), Center(
                              child: Text('       More Categories',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                    
                     
                    
                  ],
                ),
                          ],
            ),
          ),
        ),
          )
        

      ),
      
    
        
      
    );
  }
}