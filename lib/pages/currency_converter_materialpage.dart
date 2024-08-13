import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialpage extends StatelessWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: const Color.fromRGBO(255, 0, 0, 0.2),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Hello, world",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(50.0),
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.access_alarm),
                      prefixIconColor: Colors.orange,
                      prefixStyle:
                          TextStyle(textBaseline: TextBaseline.alphabetic),
                      hintText: "This is hint",
                      labelText: "This is a floating label",
                      helperText: "This is a help text"),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      elevation: 2,
                    ),
                    onPressed: () => {
                          if (kDebugMode)
                            {
                              debugPrint("Hello"),
                            }
                        },
                    child: const Text("Click here")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
