import 'package:flutter/material.dart';

class MainPagesWidgets extends StatefulWidget {
  MainPagesWidgets({
    super.key,
    required this.text,
    required this.bl,
    required this.br,
    required this.tl,
    required this.tr,
  });

  String text;
  double bl;
  double br;
  double tl;
  double tr;

  @override
  State<MainPagesWidgets> createState() => _MainPagesWidgetsState();
}

class _MainPagesWidgetsState extends State<MainPagesWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80.0,
      width: 160.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3.0),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(widget.bl),
            topRight: Radius.circular(widget.tr),
            bottomRight: Radius.circular(widget.br),
            topLeft: Radius.circular(widget.tl)),
        color: const Color(0xff1c5bea),
      ),
      child: Text(
        widget.text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
