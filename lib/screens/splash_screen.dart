import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Icon(
            Icons.qr_code_2,
            size: 120,
            color: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Hello This IS QR Code App",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/home");
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                shadowColor: Colors.black,elevation: 5,
              ), child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Let's Start",style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,
                  ),),
                  // SizedBox(width: 80,),
                  Icon(Icons.arrow_forward,color: Colors.white,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}