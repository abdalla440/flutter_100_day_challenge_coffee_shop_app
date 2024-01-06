import 'package:flutter/material.dart';

import '../../../../../core/utils/color_helper.dart';
import '../../../../../core/utils/style_helper.dart';

List tempChipsList = [
  ['Cappuccino', true],
  ['Machiato', false],
  ['Latte', false],
  ['Americano', false],
];

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ListView.separated(
        itemBuilder: (context, index) => ChoiceChip(
          selectedColor: ColorHelper.mainItemsCoffeeColor,
          backgroundColor: Colors.white,
          showCheckmark: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          label: Text(tempChipsList[index][0],
              style: tempChipsList[index][1] == true
                  ? StyleHelper.textStyle14W600.copyWith(color: Colors.white)
                  : StyleHelper.textStyle14W400LG
                      .copyWith(color: Colors.black)),
          selected: tempChipsList[index][1],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 8.0,
        ),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
