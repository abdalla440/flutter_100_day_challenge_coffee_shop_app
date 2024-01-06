import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_helper.dart';
import '../../../../../core/utils/style_helper.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    super.key,
  });

  final String locationP1 = 'El-Salam City';
  final String locationP2 = 'Suez';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: StyleHelper.textStyle12W400,
            ),
            Row(
              children: [
                Text(
                  '$locationP1, $locationP2',
                  style: StyleHelper.textStyle14W600,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_rounded))
              ],
            )
          ],
        ),
        const Spacer(),
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
              image: DecorationImage(
                  image: AssetImage(AssetsHelper.userImagePath),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }
}
