import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleButtonAndDescription extends StatelessWidget {
  const TitleButtonAndDescription({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.chevron_forward,
                  color: Color.fromARGB(255, 112, 111, 111),
                ),
                iconSize: 24,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: RichText(
              text: TextSpan(
                text: description,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 131, 130, 130),
                    height: 1.3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
