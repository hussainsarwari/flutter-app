import 'package:flutter/material.dart';


class Nextpage extends StatelessWidget {
  const Nextpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next 2",style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: const Color.fromARGB(255, 46, 42, 58),
      ),
      body:
      Center(
        child: Row(
          children: [
            Expanded(child: Image(image: AssetImage('images/app2/images/dice1.png'),)),
            Expanded(child: Image(image: AssetImage('images/app2/images/dice1.png'),))
          ],
        ),
      )
    );
  }
}
