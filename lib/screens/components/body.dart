import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const BalanceAndAccountButton(),
          const CircularOptions(),
          MyCards(size: size),
          InfoCards(size: size),
          const Divider(
            thickness: 2,
            color: Color.fromARGB(255, 207, 205, 205),
          ),
        ],
      ),
    );
  }
}

class InfoCards extends StatelessWidget {
  const InfoCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 16, bottom: 16),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                width: size.width * 0.7,
                child: InkWell(
                  onTap: () {},
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Container(
                    height: size.height * 0.15,
                    decoration: const BoxDecoration(
                      color: ColorsPalette.kContainers,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: 'Você tem até ',
                            style: DefaultTextStyle.of(context).style,
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'R\$25.000,00',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 132, 8, 180))),
                              TextSpan(text: ' disponíveis para empréstimo!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.7,
              child: InkWell(
                onTap: () {},
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Container(
                  height: size.height * 0.15,
                  decoration: const BoxDecoration(
                    color: ColorsPalette.kContainers,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: 'Salve seus amigos da burocracia. ',
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'Faça um convite para o Nubank.',
                              style: TextStyle(
                                color: Color.fromARGB(255, 132, 8, 180),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCards extends StatelessWidget {
  const MyCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 48, right: 16),
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
            height: size.height * 0.2,
            width: size.width * 0.2,
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

class BalanceAndAccountButton extends StatelessWidget {
  const BalanceAndAccountButton({
    Key? key,
    this.title,
  }) : super(key: key);
  final String title;

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
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.chevron_forward,
                  color: Color.fromARGB(255, 112, 111, 111),
                ),
                iconSize: 32,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              'R\$ 1.356,98',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
