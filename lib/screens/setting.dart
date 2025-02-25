import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),),

            child: ListTile(
              title: Text("Vibrate",
                style: TextStyle(color: Colors.red),
              ),
              subtitle: Text("Vibration when scans is done."),
              trailing: Switch(
                value: true, // Default value
                onChanged: (value) {
                  // Yahan functionality baad mein add karenge
                },
              ),
            ),
          ),
          ListTile(
            title: Text("Bags"),
            subtitle: Text("Every video scans is done."),
            trailing: Switch(
              value: true, // Default value
              onChanged: (value) {
                // Yahan functionality baad mein add karenge
              },
            ),
          ),
          Divider(), // Section ko separate karne ke liye
          ListTile(
            title: Text("Rate Up"),
            subtitle: Text("Your best reward to us."),
            trailing: Icon(Icons.star, color: Colors.amber),
            onTap: () {
              // Yahan functionality baad mein add karenge
            },
          ),
          ListTile(
            title: Text("Share"),
            subtitle: Text("Share app with others."),
            trailing: Icon(Icons.share),
            onTap: () {
              // Yahan functionality baad mein add karenge
            },
          ),
          Divider(), // Section ko separate karne ke liye
          ListTile(
            title: Text("Privacy Policy"),
            subtitle: Text("Follow our policies that benefits you."),
            trailing: Icon(Icons.privacy_tip),
            onTap: () {
              // Yahan functionality baad mein add karenge
            },
          ),
        ],
      ),
    );
  }
}