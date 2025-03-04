import 'package:flutter/material.dart';
import 'result.dart'; // ✅ ResultScreen import kiya

class History extends StatelessWidget { // ✅ Class start
  @override
  Widget build(BuildContext context) { // ✅ Build method start
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text("History"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Scan", style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Create", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder( // ✅ ListView.builder start
              padding: EdgeInsets.all(8),
              itemCount: 6,
              itemBuilder: (context, index) { // ✅ itemBuilder start

                // Dummy Data (ye database se bhi aa sakti hai)
                String dummyData = "https://itunes.com";
                String dummyDate = "16 Dec 2022, 9:30 pm";

                return Card( // ✅ Card start
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile( // ✅ ListTile start
                    leading: Icon(Icons.qr_code, color: Colors.amber),
                    title: Text(dummyData, style: TextStyle(color: Colors.white)),
                    subtitle: Text("Data\n$dummyDate", style: TextStyle(color: Colors.grey)),
                    trailing: Icon(Icons.qr_code_2, color: Colors.amber),

                    onTap: () { // ✅ `onTap` function start
                      Navigator.push( // ✅ `Navigator.push` start
                        context,
                        MaterialPageRoute( // ✅ `MaterialPageRoute` start
                          builder: (context) => ResultScreen( // ✅ `ResultScreen` ko navigate kar raha hai
                              data: dummyData,
                              date: dummyDate
                          ), // ✅ `ResultScreen` end
                        ), // ✅ `MaterialPageRoute` end
                      ); // ✅ `Navigator.push` end
                    }, // ✅ `onTap` function end

                  ), // ✅ ListTile end
                ); // ✅ Card end

              }, // ✅ itemBuilder end
            ), // ✅ ListView.builder end
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: "Generate",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
        ],
      ),
    ); // ✅ Scaffold end
  } // ✅ Build method end
} // ✅ Class end
