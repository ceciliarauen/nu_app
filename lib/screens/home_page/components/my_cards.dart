import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';

class MyCards extends StatelessWidget {
  const MyCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 32, right: 16),
      child: Container(
        width: double.infinity,
        child: InkWell(
          onTap: () {},
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: Container(
            height: size.height * 0.08,
            decoration: const BoxDecoration(
                color: ColorsPalette.kContainers,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: const [
                  Icon(CupertinoIcons.creditcard_fill),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Meus Cartões',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
