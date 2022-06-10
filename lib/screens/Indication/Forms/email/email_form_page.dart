import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';
import 'package:nu_app_copy/screens/Indication/Forms/email/email_form_content.dart';

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
      body: Body(emailController: emailController),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 219, 217, 217),
        child: const Icon(
          CupertinoIcons.arrow_right,
          color: Colors.grey,
          size: 40,
        ),
      ),
    );
  }
}
