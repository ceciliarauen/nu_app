import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class BalanceAndAccountButton extends StatelessWidget {
  const BalanceAndAccountButton({
    Key? key,
    required this.valor,
  }) : super(key: key);

  final String valor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Conta',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
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
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              valor,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
