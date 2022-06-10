import 'package:flutter/material.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';

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
        onPressed: () {},
        child: Text(
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
