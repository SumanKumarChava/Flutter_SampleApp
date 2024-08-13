import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialpage extends StatefulWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  State<CurrencyConverterMaterialpage> createState() =>
      _CurrencyConverterMaterialpage1State();
}

class _CurrencyConverterMaterialpage1State
    extends State<CurrencyConverterMaterialpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(50, 50, 50, 0.2),
        foregroundColor: Colors.black,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      body: ColoredBox(
        color: const Color.fromRGBO(50, 50, 50, 0.2),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "0",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    prefixIcon: Icon(Icons.currency_exchange),
                    prefixIconColor: Colors.black,
                    //hintText: "This is hint",
                    labelText: "Enter amount",
                    //helperText: "This is a help text",
                  ),
                  style: TextStyle(
                    color: Colors.black,
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
                    child: const Text("Convert")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
