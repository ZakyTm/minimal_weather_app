import 'package:flutter/material.dart';

import '../models/constants.dart';
import 'welcome.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    Constants myConstants = Constants();
    Size size = MediaQuery.of(context)
        .size; // This size provide us total height and width of our screen

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: myConstants.primaryColor.withOpacity(.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/get-started.png'),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Welcome()));
              },
              child: Container(
                height: 50,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: myConstants.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
