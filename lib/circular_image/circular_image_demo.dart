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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: const AssetImage('assets/images/catw3.png'),
              radius: 120,
              onBackgroundImageError: (e, s) {
                debugPrint('Image issue, $e,$s');
              },
            ),
          )
        ],
      ),
    );
  }
}
