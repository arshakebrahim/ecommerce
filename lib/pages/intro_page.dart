import 'package:ecommerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(padding: EdgeInsets.all(25),
        child: Column(
          children: [
            //logo
           Image(image: AssetImage("lib/Images/nike-4-logo-png-transparent.png"),height: 450,),
            SizedBox(height: 48,),
            //title
            Text('Just Do It',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 24,),
            //subtitlev
            Text('Brand new sneakers and custom kicks made with premium quality',style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
            SizedBox(height: 48,),
            //button
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Center(child: Text('Shop Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
            )


          ],

        ),),
      ),
    );
  }
}