import 'package:flutter/material.dart';
import 'dart:ui';


class Profile extends StatelessWidget {
  const Profile({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("my profile app", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: const Color.fromARGB(255, 46, 42, 58),
      ),
      body:
      
      
       SafeArea(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Apply blur directly on image
            Stack(
              children: [
                Positioned.fill(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Image.asset(
                      'images/my_pit.png', // Replace with your image
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 50.0,
                  // backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('images/my_pit.png'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Mohammad Hussain Sarvari",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 182, 182, 182),
                fontFamily: 'myfont',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Laravel & full-stack developer",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 182, 182, 182),
                letterSpacing: 2.0,
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 0, 119, 183),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.phone, color: Colors.white, size: 15),
                  SizedBox(width: 10),
                  Text(
                    "+93766805049",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 0, 119, 183),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.email, color: Colors.white, size: 15),
                  SizedBox(width: 10),
                  Text(
                    "mohammadhussainsarwari12@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Nextpage');
              },

              style: OutlinedButton.styleFrom(
                minimumSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),

              child: Text(
                "Next ",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 119, 183),
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
