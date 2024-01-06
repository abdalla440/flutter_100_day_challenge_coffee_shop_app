import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_helper.dart';
import '../../../../../core/utils/style_helper.dart';
import '../../../../shared/widgets/CoffeeButtons.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff313131),
          borderRadius: BorderRadius.circular(16.0)),
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: TextField(
        style: StyleHelper.textStyle14W400LG,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(16.0),
            hintText: 'Search coffee',
            hintStyle: StyleHelper.textStyle14W400LG,
            prefixIconConstraints: const BoxConstraints(maxHeight: 20),
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: ImageIcon(
                AssetImage(AssetsHelper.searchIconPath),
                color: Colors.white,
              ),
            ),
            suffixIcon: const CoffeeIconButton(
              icon: ImageIcon(
                AssetImage(AssetsHelper.sliderIconPath),
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
