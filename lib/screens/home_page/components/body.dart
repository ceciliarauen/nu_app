import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';
import 'package:nu_app_copy/global_widgets/title_button_and_description.dart';
import 'package:nu_app_copy/screens/home_page/components/balance_and_account.dart';
import 'package:nu_app_copy/screens/home_page/components/circular_options.dart';
import 'package:nu_app_copy/screens/home_page/components/credit_card.dart';
import 'package:nu_app_copy/screens/home_page/components/info_cards.dart';
import 'package:nu_app_copy/screens/home_page/components/insurance.dart';
import 'package:nu_app_copy/screens/home_page/components/my_cards.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const BalanceAndAccountButton(
            valor: 2,
          ),
          const CircularOptions(),
          MyCards(size: size),
          InfoCards(size: size),
          const Divider(
            thickness: 2,
            color: Color.fromARGB(255, 207, 205, 205),
          ),
          const CreditCard(valor: 250.52),
          const Divider(
            thickness: 2,
            color: Color.fromARGB(255, 207, 205, 205),
          ),
          const TitleButtonAndDescription(
              title: 'Empréstimo',
              description: 'Valor disponível de até R 25.000,00'),
          const Divider(
            thickness: 2,
            color: Color.fromARGB(255, 207, 205, 205),
          ),
          const TitleButtonAndDescription(
              title: 'Investimentos',
              description:
                  'O jeito Nu de investir: sem asteriscos, línguagem fácil e a partir de R1. Saiba mais.'),
          const Divider(
            thickness: 2,
            color: Color.fromARGB(255, 207, 205, 205),
          ),
          Insurance(size: size),
          const Divider(
            thickness: 2,
            color: Color.fromARGB(255, 207, 205, 205),
          ),
          const TitleButtonAndDescription(
              title: 'Shopping',
              description:
                  'Vantagens exclusivas das nossas marcas preferidas.'),
        ],
      ),
    );
  }
}
