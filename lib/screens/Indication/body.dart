import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.chevron_back,
                color: Colors.grey,
                size: 32,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '3 pessoas',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 8),
                child: Text(
                  'aceitaram seu convite para o',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                'Nubank',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
