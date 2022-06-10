import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_app_copy/screens/Indication/Indication.dart';

import 'package:nu_app_copy/screens/home_page/components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: buildAppBar(context),
      ),
      body: const Body(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.only(left: 16, right: 11),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(CupertinoIcons.person),
        alignment: Alignment.bottomRight,
        iconSize: 32,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(CupertinoIcons.eye),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(CupertinoIcons.question_circle),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Indication(),
              ),
            );
          },
          icon: const Icon(CupertinoIcons.person_add),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ),
    ],
    flexibleSpace: Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 16, bottom: 16),
        child: Title(
          color: Colors.black,
          child: const Text(
            'Olá, Cecília',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ),
  );
}
