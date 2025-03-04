import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String data;
  final String date;

  ResultScreen({required this.data, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.grey[900],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(16.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Data", style: TextStyle(color: Colors.white, fontSize: 18)),
                  SizedBox(height: 10),
                  Text(data, style: TextStyle(color: Colors.amber)),
                  SizedBox(height: 10),
                  Text(date, style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share, color: Colors.amber),
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.copy, color: Colors.amber),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QRCodeScreen(data: data),
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            child: Text("Show QR", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}

class QRCodeScreen extends StatelessWidget {
  final String data;

  QRCodeScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("QR Code"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("QR Code", style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Icon(Icons.qr_code, size: 200, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(data, style: TextStyle(color: Colors.amber)),
          ],
        ),
      ),
    );
  }
}
