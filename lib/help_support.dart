import 'package:flutter/material.dart';

class HelpAndSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help and Support'),
      ),
      body:const  Padding(
        padding:  EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How can we help you?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Frequently Asked Questions:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              FAQItem(
                question: 'How do I create an account?',
                answer: 'To create an account, click on the "Sign Up" button on the home page and follow the instructions.',
              ),
            
              FAQItem(
                question: 'How can I list my property?',
                answer: 'Once logged in, go to the "List Property" section and fill out the necessary details.',
              ),
              FAQItem(
                question: 'What payment methods do you accept?',
                answer: 'We accept various payment methods including credit cards, debit cards, and bank transfers.',
              ),
              SizedBox(height: 16),
              Text(
                'Contact Us:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'For further assistance, please reach out to us:\n'
                'Email: support@rentalapp.com\n'
                'Phone: 123 456-7890',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Additional Resources:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '• Help Center: Visit our online Help Center for more information.\n'
                '• Community Forum: Join our community to ask questions and share experiences.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  const FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        const   SizedBox(height: 4),
          Text(
            answer,
            style: const  TextStyle(fontSize: 14),
          ),
         const  Divider(), // Add a divider between FAQ items
        ],
      ),
    );
  }
}