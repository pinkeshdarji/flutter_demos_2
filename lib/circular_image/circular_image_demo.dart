import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CircularImagemDemo extends StatelessWidget {
  const CircularImagemDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              scale: 12,
            ),
            SizedBox(
              width: 10,
            ),
            const Text(
              'FlutterBeads',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        backgroundColor: const Color(0xff6ae792),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/cat3.png"))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                  width: 200.0,
                  height: 200.0,
                  child: Image.asset('assets/images/cat3.png')),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/cat3.png'),
              radius: 120,
              onBackgroundImageError: (e, s) {
                debugPrint('xx, $e,$s');
              },
            ),
          )
        ],
      ),
    );
  }
}
