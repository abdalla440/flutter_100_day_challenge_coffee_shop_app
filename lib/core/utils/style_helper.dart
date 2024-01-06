import 'dart:ui';
import 'package:day_two/core/utils/color_helper.dart';
import 'package:flutter/material.dart';

abstract class StyleHelper {
  static TextStyle textStyle34W600 =
  TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 34,
    color: Colors.white,
  );
  static TextStyle textStyle18regular =
  const   TextStyle(
    fontSize: 14,
    color: Color(0xffA9A9A9),
  );
  static TextStyle textStyle16W600 =
  const   TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,

  );
  static TextStyle textStyle18W600 =
  const   TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,

  );
  static TextStyle textStyle12W400 =
  const   TextStyle(
    fontSize: 12,
    color: ColorHelper.mainFontGrayColor

  );
  static TextStyle textStyle14W600 =
  const   TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: ColorHelper.mainFontLightGrayColor

  );
  static TextStyle textStyle14W400LG =
  const   TextStyle(
    color: Color(0xff989898),
    fontSize: 14.0,
  );
}
