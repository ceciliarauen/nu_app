import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nu_app_copy/screens/Indication/Forms/email/email_form_page.dart';

class ShareWithFriends extends StatelessWidget {
  const ShareWithFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  CupertinoIcons.xmark,
                  color: Colors.grey,
                  size: 28,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(bottom: 24.0, left: 24, right: 16, top: 16),
                child: Text(
                  'Por onde você quer indicar seu amigo?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              ShareOption(
                icone: const Icon(CupertinoIcons.mail),
                title: 'E-mail',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmailForm(),
                    ),
                  );
                },
              ),
              ShareOption(
                icone: const Icon(Icons.facebook),
                title: 'Facebook Messenger',
                press: () {},
              ),
              ShareOption(
                icone: const Icon(Icons.whatsapp),
                title: 'WhatsApp',
                press: () {},
              ),
              ShareOption(
                icone: const Icon(Icons.more_horiz),
                title: 'Mais opções',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShareOption extends StatelessWidget {
  const ShareOption({
    Key? key,
    required this.icone,
    required this.title,
    required this.press,
  }) : super(key: key);

  final Icon icone;
  final String title;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 16, top: 16),
          child: Row(
            children: [
              icone,
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: press,
                icon: const Icon(
                  CupertinoIcons.chevron_forward,
                  color: Color.fromARGB(255, 112, 111, 111),
                  size: 24,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Color.fromARGB(255, 190, 189, 189),
        ),
      ],
    );
  }
}
