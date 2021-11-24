import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumericKeyboardDemo extends StatelessWidget {
  const NumericKeyboardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                scale: 12,
              ),
              const SizedBox(
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
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Enter Number'),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter Decimal value'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
              ],
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter phone number'),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter Number'),
              keyboardType: defaultTargetPlatform == TargetPlatform.iOS
                  ? TextInputType.numberWithOptions(decimal: true, signed: true)
                  : TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            )
          ],
        ),
      ),
    );
  }
}
