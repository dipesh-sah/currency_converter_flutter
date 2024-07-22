import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          elevation: 3,
          title: const Text(
            'Currency Converter',
          ),
          centerTitle: true,
          actions: const [Icon(Icons.monetization_on_rounded)],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                  style: const TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.blue),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: "Please enter amount in USD",
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.monetization_on_outlined),
                      filled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      fillColor: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    elevation: 4,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text('Click me'),
                )
              ],
            ),
          ),
        ));
  }
}
