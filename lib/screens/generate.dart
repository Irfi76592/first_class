import 'package:flutter/material.dart';

class Generate extends StatelessWidget {
  const Generate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Generate QR"),
        backgroundColor: Colors.grey[850],
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.orange),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          children: [
            qrIcon(Icons.text_fields, "Text"),
            qrIcon(Icons.language, "Website"),
            qrIcon(Icons.wifi, "Wi-Fi"),
            qrIcon(Icons.event, "Event"),
            qrIcon(Icons.person, "Contact"),
            qrIcon(Icons.business, "Business"),
            qrIcon(Icons.location_on, "Location"),
            qrIcon(Icons.chat, "WhatsApp"),
            qrIcon(Icons.email, "Email"),
            qrIcon(Icons.phone, "Telephone"),
            qrIcon(Icons.camera, "Instagram"),
            qrIcon(Icons.share, "Twitter"),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.qr_code, color: Colors.orange, size: 22),
                  Text("Generate", style: TextStyle(color: Colors.orange, fontSize: 11)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.history, color: Colors.white, size: 22),
                  Text("History", style: TextStyle(color: Colors.white, fontSize: 11)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget qrIcon(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange, width: 1.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.orange, size: 24),
          SizedBox(height: 4),
          Text(title, style: TextStyle(color: Colors.orange, fontSize: 11)),
        ],
      ),
    );
  }
}
