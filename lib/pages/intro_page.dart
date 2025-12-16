import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 40,
            children: [
          
          
              //logo image
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/assets/nikelogo.png',
                height: 240,
                ),
              ),
          
              //text widget 01
              Text('Just Do It.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
              ),
          
              //text widget 02
              Text('Brand New Sneakers And Custom Kicks Made With Premium Materials.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              ),
          
              //get started button
              GestureDetector(
                onTap:() => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder:(context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text('Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )
                    ),
                  ),
                
                ),
              
            )
          
            ],
          ),
        ),
      ),

    );
  }
}