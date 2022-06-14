import 'package:flutter/material.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';

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
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 16, bottom: 16),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
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
          ],
        ),
      ),
    );
  }
}
