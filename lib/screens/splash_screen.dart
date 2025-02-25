import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber, // Black Background
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(), // Upper space ke liye

          // QR Code Icon
          Icon(
            Icons.qr_code_2,
            size: 120,
            color: Colors.black,
          ),

          SizedBox(height: 20),

          // Description Text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Go and enjoy our features for free\nand make your life easy with us.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500, // Default Font Weight
              ),
            ),
          ),

          Spacer(), // Button ko neeche rakhne ke liye

          // "Let's Start" Button
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                // Next screen pe navigate karna
                Navigator.pushReplacementNamed(context, "/home");
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Let's Start",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward, color: Colors.black),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
