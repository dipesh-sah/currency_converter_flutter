import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemBlue,
        navigationBar: const CupertinoNavigationBar(
          middle: Text(
            'Currency Converter',
          ),
        ),
        child: Center(
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
                CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(color: CupertinoColors.activeBlue),
                  keyboardType: TextInputType.number,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(2.5),
                    color: CupertinoColors.white,
                  ),
                  placeholder: 'Please enter amount in USD',
                  prefix: const Icon(CupertinoIcons.money_dollar),
                ),
                const SizedBox(
                  height: 10,
                ),
                CupertinoButton(
                  color: CupertinoColors.black,
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                  },
                  child: const Text('Click me'),
                )
              ],
            ),
          ),
        ));
  }
}
