import 'package:flutter/material.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';

class DiscoverServices extends StatelessWidget {
  const DiscoverServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const  BouncingScrollPhysics(parent:  AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 32.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: ServiceCard(
                image: 'assets/images/Samsung_Nubank.png',
                title: 'Samsung Pay',
                description:
                    'Pague usando só o seu celular ou relógio Samsung, começe hoje mesmo!',
                buttonText: 'Conhecer mais',
                press: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ServiceCard(
                image: 'assets/images/nubank_2.jpg',
                title: 'Parcele compras no app',
                description:
                    'Descontos em compras à vista no crédito, controle total sobre as parcelas...',
                buttonText: 'Conhecer',
                press: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ServiceCard(
                image: 'assets/images/nubank_3.jpg',
                title: 'Portabilidade de salário',
                description:
                    'Sua liberade financeira começa com você escolhendo onde quer receber s...',
                buttonText: 'Conhecer',
                press: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ServiceCard(
                image: 'assets/images/nubank_4.jpg',
                title: 'Indique seus amigos',
                description:
                    'Mostre aos seus amigos como é fácil ter uma vida sem burocracia.',
                buttonText: 'Indicar amigos',
                press: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ServiceCard(
                image: 'assets/images/nubank_5.jpg',
                title: 'WhatsApp',
                description:
                    'Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem...',
                buttonText: 'Quero conhecer',
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.press,
  }) : super(key: key);

  final String image;
  final String title;
  final String description;
  final String buttonText;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: size.width * 0.75,
        height: size.height * 0.60,
        decoration: BoxDecoration(
            color: ColorsPalette.kContainers,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: size.height * 0.33,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 16),
                    child: RichText(
                      text: TextSpan(
                        text: description,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 131, 130, 130),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: ElevatedButton(
                      onPressed: press,
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: ColorsPalette.kPrimaryColor,
                        fixedSize: Size(size.width * 0.4, size.height * 0.07),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        elevation: 0,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
