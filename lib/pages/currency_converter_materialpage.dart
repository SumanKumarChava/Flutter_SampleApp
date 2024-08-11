import 'package:flutter/material.dart';

class CurrencyConverterMaterialpage extends StatelessWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ColoredBox(
            color: Color.fromRGBO(255, 0, 0, 0.2),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello, world",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Hello suman"),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ))));
  }
}
