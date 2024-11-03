import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_clone/4thpage.dart';
import 'package:olx_clone/5th.dart';
import '3rdPage.dart'; // Ensure this file exists and is correctly named
import '1stpage.dart'; // Ensure this file exists and is correctly named
import 'package:url_launcher/url_launcher.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final NavigationController controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 228, 243),
        foregroundColor: const Color.fromARGB(255, 93, 104, 175),
        toolbarHeight: 16,

        actions: [],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                onPressed: _launchMapsUrl,
              ),
              const SizedBox(width: 8),
              const Text(
                'Rajkiya Engineering College, Azamgarh',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(ThridPage());
        },
        child: const Icon(Icons.add_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_rounded), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.chat), label: 'My Chats'),
            NavigationDestination(icon: Icon(Icons.favorite), label: 'My Ads'),
            NavigationDestination(icon: Icon(Icons.account_box), label: 'Account'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }

  void _launchMapsUrl() async {
    const String googleMapsUrl = 'https://maps.google.com/?cid=8140131042848375194&entry=gps';
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      print('Could not launch $googleMapsUrl');
    }
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const FirstPage(),
   const  Center(child: Text('My Chats Screen')),
    const FourthPage(),
    const FivethPage()
  ];
}
