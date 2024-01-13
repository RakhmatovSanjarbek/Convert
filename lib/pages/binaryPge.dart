import 'package:flutter/material.dart';

class BinaryConverter extends StatefulWidget {
  const BinaryConverter({super.key});

  @override
  _BinaryConverterState createState() => _BinaryConverterState();
}

class _BinaryConverterState extends State<BinaryConverter> {
  TextEditingController binaryController = TextEditingController();
  String decimalResult = '';
  String octalResult = '';
  String hexadecimalResult = '';

  void convertBinary() {
    String binaryNumber = binaryController.text;
    if (binaryNumber.isEmpty || !RegExp(r'^[01]+$').hasMatch(binaryNumber)) {
      // Input validation
      setState(() {
        decimalResult = '';
        octalResult = '';
        hexadecimalResult = '';
      });
      return;
    }

    int decimalNumber = int.parse(binaryNumber, radix: 2);
    String octalNumber = decimalNumber.toRadixString(8);
    String hexadecimalNumber = decimalNumber.toRadixString(16);

    setState(() {
      decimalResult = decimalNumber.toString();
      octalResult = octalNumber;
      hexadecimalResult = hexadecimalNumber;
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
                    controller: binaryController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          gapPadding: 2.0,
                        ),
                        labelText: 'Ikkilik raqam kiriting',
                        labelStyle: const TextStyle()),
                  ),
                  const SizedBox(height: 32.0),
                  Text(
                    'O\'nlik: $decimalResult',
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'Sakkizlik:  $octalResult',
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'O\'n oltilik: $hexadecimalResult',
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    convertBinary();
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
                      binaryController.text = '';
                      octalResult = '';
                      decimalResult = '';
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
