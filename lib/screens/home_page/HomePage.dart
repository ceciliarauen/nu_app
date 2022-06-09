import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_app_copy/screens/home_page/components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: buildAppBar(),
      ),
      body: const Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.only(left: 16, right: 11),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(CupertinoIcons.person),
        alignment: Alignment.bottomRight,
        iconSize: 32,
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
          onPressed: () {},
          icon: const Icon(CupertinoIcons.person_add),
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
