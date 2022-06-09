import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';

class Insurance extends StatelessWidget {
  const Insurance({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 16,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Seguro',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 16),
            child: Expanded(
              child: RichText(
                text: TextSpan(
                  text: 'Proteção para você cuidar do que importa',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 131, 130, 130),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
            ),
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: InsuranceInfo(
                    title: 'Seguro Vida',
                    icone: Icon(
                      CupertinoIcons.heart,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
            ),
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: InsuranceInfo(
                    title: 'Seguro Celular',
                    icone: Icon(
                      CupertinoIcons.phone,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InsuranceInfo extends StatelessWidget {
  const InsuranceInfo({
    Key? key,
    required this.title,
    required this.icone,
  }) : super(key: key);

  final String title;
  final Icon icone;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          icone,
          SizedBox(
            width: 16,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Text(
            'Conhecer',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorsPalette.kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
