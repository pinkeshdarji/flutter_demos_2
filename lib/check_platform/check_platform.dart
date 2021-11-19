import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CheckPlatformDemo extends StatelessWidget {
  const CheckPlatformDemo({Key? key}) : super(key: key);

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
          if (defaultTargetPlatform == TargetPlatform.android) ...[
            const Center(
              child: Text(
                'Android',
                style: TextStyle(fontSize: 74, fontWeight: FontWeight.bold),
              ),
            )
          ] else if (defaultTargetPlatform == TargetPlatform.iOS) ...[
            const Center(
              child: Text(
                'iOS',
                style: TextStyle(fontSize: 74, fontWeight: FontWeight.bold),
              ),
            )
          ] else ...[
            const Center(
              child: Text(
                'Web',
                style: TextStyle(fontSize: 74, fontWeight: FontWeight.bold),
              ),
            )
          ]
        ],
      ),
    );
  }
}
