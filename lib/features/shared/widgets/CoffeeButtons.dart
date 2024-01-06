import 'package:flutter/material.dart';

import '../../../core/utils/color_helper.dart';

class CoffeeIconButton extends StatelessWidget {
  const CoffeeIconButton({
    super.key,
    required this.icon,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(ColorHelper.mainItemsCoffeeColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ),
    );
  }

}
