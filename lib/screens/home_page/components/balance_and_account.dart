import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class BalanceAndAccountButton extends StatelessWidget {
  const BalanceAndAccountButton({
    Key? key,
    required this.valor,
  }) : super(key: key);

  final double valor;

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
              Text(
                'Conta',
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
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
            padding: EdgeInsets.only(top: 8),
            child: Text(
              'R\$ ' + valor.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}