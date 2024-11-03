import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:olx_clone/about_us.dart';
import 'package:olx_clone/help_support.dart';
import 'package:olx_clone/privacy.dart';

class FivethPage extends StatefulWidget {
  const FivethPage({super.key});

  @override
  State<FivethPage> createState() => _FivethPageState();
}

class _FivethPageState extends State<FivethPage> {
  File? profilepic;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Profile Picture Section
          GestureDetector(
            onTap: () async {
              XFile? selectedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

              if (selectedImage != null) {
                File convertedFile = File(selectedImage.path);
                setState(() {
                  profilepic = convertedFile;
                });
                print("Image selected!");
              } else {
                print("No image selected!");
              }
            },
            child: Center(
              child: CircleAvatar(
                radius: 66,
                backgroundImage: (profilepic != null) ? FileImage(profilepic!) : null,
                backgroundColor: Colors.white,
                child: (profilepic == null)
                    ? const Icon(Icons.camera_alt, size: 40, color: Colors.grey) 
                    : null,
              ),
            ),
          ),
          const SizedBox(height: 20), // Spacing between profile picture and sections
          
          // Three Sections Below Profile Picture
          Expanded(
            child: Column(
              children: [
                ListTile(
                  title: const Text('Purchase'),
                  leading: const Icon(Icons.account_circle),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('My Order'),
                  leading: const Icon(Icons.settings),
                  onTap: () {
                    // Handle navigation or action here
                  },
                ),
                ListTile(
                  title: const Text('Select Languages'),
                  leading: const Icon(Icons.language),
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: const Text('About Us'),
                  leading: const Icon(Icons.app_settings_alt_rounded),
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()),
            );
                  },
                ),
                 ListTile(
                  title: const Text('Privacy'),
                  leading: const Icon(Icons.password_sharp),
                  onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PrivacyPolicyPage()));
                  },
                ),
                ListTile(
                  title: const Text('Help & Support'),
                  leading: const Icon(Icons.info),
                  onTap: () {
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpAndSupportPage()));
                  },
                ),
                            
                // Log Out Button
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await auth.signOut();
                      // Optionally navigate to the login page or show a message
                      Navigator.pushReplacementNamed(context, '/login'); // Adjust the route as necessary
                    },
                    child: const Text('Log Out'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Customize the button color
                      foregroundColor: Colors.white, // Text color
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Button padding
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
