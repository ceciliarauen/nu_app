import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';

class EmailForm extends StatefulWidget {
  EmailForm({Key? key}) : super(key: key);

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
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
                    CupertinoIcons.chevron_back,
                    color: Colors.grey,
                    size: 28,
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 24.0, left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Qual é o e-mail de quem você gostaria de indicar?',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    showCursor: true,
                    decoration: InputDecoration(
                      suffixIcon: emailController.text.isEmpty
                          ? Container()
                          : IconButton(
                              onPressed: () => emailController.clear(),
                              icon: const Icon(CupertinoIcons.xmark),
                              color: const Color.fromARGB(121, 141, 139, 139),
                            ),
                    ),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
