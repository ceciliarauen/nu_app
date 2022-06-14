import 'package:flutter/material.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';

class InviteTextAndImage extends StatelessWidget {
  const InviteTextAndImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 8, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '3 pessoas',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: ColorsPalette.kPrimaryColor,
            ),
          ),
          const Text(
            'aceitaram seu convite para o',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 41, 40, 40),
            ),
          ),
          const Text(
            'Nubank',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 41, 40, 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: RichText(
              text: const TextSpan(
                text:
                    'Salve amigos e familiares da burocracia. Para cada convite aceito, um novo brasão é liberado.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 131, 130, 130),
                    height: 1.5),
              ),
            ),
          ),
          Image.asset(
            'assets/images/nubank.gif',
            fit: BoxFit.cover,
            height: 250,
          ),
        ],
      ),
    );
  }
}
