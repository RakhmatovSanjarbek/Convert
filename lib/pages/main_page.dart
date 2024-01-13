import 'package:flutter/material.dart';
import 'package:sanoq_sestemalari/pages/binaryPge.dart';
import 'package:sanoq_sestemalari/pages/decimalPage.dart';
import 'package:sanoq_sestemalari/pages/hexadecimalPage.dart';
import 'package:sanoq_sestemalari/pages/octalPage.dart';
import 'package:sanoq_sestemalari/widgets/main_page_widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(24.0),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage('assets/tuitkf.png'),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    "Muhammad al-Xorazmiy",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "nomidagi Toshkent axborot",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "texnologiyalar universeteti",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "Qarshi filiali",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    "Sanoq sestemalarni hisoblovchi ilova ",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BinaryConverter()));
                      },
                      child: MainPagesWidgets(
                        text: 'Ikkilik',
                        bl: 0.0,
                        br: 32.0,
                        tl: 0.0,
                        tr: 0.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OctalConverter()));
                      },
                      child: MainPagesWidgets(
                        text: 'Sakkizlik',
                        bl: 32.0,
                        br: 0.0,
                        tl: 0.0,
                        tr: 0.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DecimalConverter()));
                      },
                      child: MainPagesWidgets(
                        text: 'O\'nlik',
                        bl: 0.0,
                        br: 0.0,
                        tl: 0.0,
                        tr: 32.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HexadecimalConverter()));
                      },
                      child: MainPagesWidgets(
                        text: 'O\'n oltilik',
                        bl: 0.0,
                        br: 0.0,
                        tl: 32.0,
                        tr: 0.0,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
