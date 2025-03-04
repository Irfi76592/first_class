import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber, // Set background color to golden
      appBar: AppBar(
        title: Text('QR Scanner Demo'),
        centerTitle: true,
        backgroundColor: Colors.white, // Set AppBar color to black for contrast
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Icon(
                Icons.qr_code_scanner,
                size: 100,
                color: Colors.black, // Set QR code icon color to black
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/generate");
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.qr_code, color: Colors.white),
                      Text("Generate", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/history");
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.history, color: Colors.white),
                      Text("History", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, "/setting");

            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: Text(
                "Go to setting",
            style: TextStyle(color: Colors.white),
            ),
          )
        ],

      ),
    );
  }
}
