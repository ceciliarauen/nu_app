import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';

class CircularOptions extends StatelessWidget {
  const CircularOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleContainer(
              icone: const Icon(Icons.pix_rounded),
              press: () {},
              title: 'Pix',
            ),
            CircleContainer(
              icone: const Icon(CupertinoIcons.barcode),
              press: () {},
              title: 'Pagar',
            ),
            CircleContainer(
              icone: const Icon(CupertinoIcons.square_arrow_up_on_square),
              press: () {},
              title: 'Transferir',
            ),
            CircleContainer(
              icone: const Icon(CupertinoIcons.square_arrow_down_on_square),
              press: () {},
              title: 'Depositar',
            ),
            CircleContainer(
              icone: const Icon(CupertinoIcons.creditcard),
              press: () {},
              title: 'Cartões',
            )
          ],
        ));
  }
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key? key,
    required this.icone,
    required this.press,
    required this.title,
  }) : super(key: key);

  final Icon icone;
  final Function() press;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Container(
            height: size.height * 0.18,
            width: size.width * 0.18,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsPalette.kContainers,
            ),
            child: IconButton(onPressed: press, icon: icone),
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w700, height: 0.2, fontSize: 14),
          )
        ],
      ),
    );
  }
}
