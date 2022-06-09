import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.size}) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      color: Color.fromARGB(255, 74, 45, 153),
    );
  }
}
