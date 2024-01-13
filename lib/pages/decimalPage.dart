import 'package:flutter/material.dart';

class DecimalConverter extends StatefulWidget {
  const DecimalConverter({super.key});

  @override
  _DecimalConverterState createState() => _DecimalConverterState();
}

class _DecimalConverterState extends State<DecimalConverter> {
  TextEditingController decimalController = TextEditingController();
  String binaryResult = '';
  String octalResult = '';
  String hexadecimalResult = '';

  void convertDecimal() {
    String decimalNumber = decimalController.text;
    if (decimalNumber.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(decimalNumber)) {
      // Input validation
      setState(() {
        binaryResult = '';
        octalResult = '';
        hexadecimalResult = '';
      });
      return;
    }

    int decimalValue = int.parse(decimalNumber);
    String binaryValue = decimalValue.toRadixString(2);
    String octalValue = decimalValue.toRadixString(8);
    String hexadecimalValue = decimalValue.toRadixString(16);

    setState(() {
      binaryResult = binaryValue;
      octalResult = octalValue;
      hexadecimalResult = hexadecimalValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 64.0,left: 4.0,right: 4.0),
              padding: const EdgeInsets.only(
                top: 32.0,
                left: 16.0,
                right: 16.0,
                bottom: 32.0,
              ),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                      offset: Offset(4.0,8.0)
                  )
                ],
                border: Border.all(color: Colors.black,width: 2.0),
                borderRadius: BorderRadius.circular(32.0),
                color: const Color(0xffe5e7f3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: decimalController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          gapPadding: 2.0,
                        ),
                        labelText: 'O\'nlik raqam kiriting'),
                  ),
                  const SizedBox(height: 16.0),
                  Text('Ikkilik: $binaryResult',
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),),
                  const SizedBox(height: 16.0),
                  Text('Sakkizlik:  $octalResult',
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),),
                  const SizedBox(height: 16.0),
                  Text('O\'n olilik: $hexadecimalResult',
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),),
                ],
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    convertDecimal();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 54.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2.0),
                        color: const Color(0xff1c5bea),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: const Text(
                      'Natija',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      decimalController.text = '';
                      binaryResult = '';
                      octalResult = '';
                      hexadecimalResult = '';
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 54.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2.0),
                        color: const Color(0xffea1c1c),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: const Text(
                      'Tozalash',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
