import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';
import 'package:nu_app_copy/screens/Indication/components/invite_text_and_image.dart';
import 'package:nu_app_copy/screens/Indication/components/share_with_friends.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                CupertinoIcons.chevron_back,
                color: Colors.grey,
                size: 32,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
        ),
        const InviteTextAndImage(),
        const Spacer(),
        const InviteButton()
      ],
    );
  }
}

class InviteButton extends StatelessWidget {
  const InviteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ShareWithFriends(),
            ),
          );
        },
        child: const Text(
          'Convidar amigos',
        ),
        style: ElevatedButton.styleFrom(
          primary: ColorsPalette.kPrimaryColor,
          fixedSize: Size(size.width * 0.8, size.height * 0.07),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 0,
        ),
      ),
    );
  }
}
