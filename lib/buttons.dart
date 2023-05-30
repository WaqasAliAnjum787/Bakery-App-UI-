import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons(
      {super.key,
      required this.color,
      required this.height,
      required this.width,
      required this.text,
      required this.child});
  final Color color;
  final double height;
  final double width;
  final Text text;
  final Icon child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(28)),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(3, 3),
                  color: Colors.grey,
                  blurRadius: 8,
                  spreadRadius: 1)
            ]),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [child, text]),
      ),
    );
  }
}
