import 'package:day_two/core/utils/style_helper.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_helper.dart';
import '../../../../shared/widgets/CoffeeButtons.dart';

class CoffeeDataElementWidget extends StatelessWidget {
  const CoffeeDataElementWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 240,

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 5),
            blurRadius: 5,
            spreadRadius: 1
          )
        ],

        color: Colors.white,

        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          const ElementImageWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cappuccino',
                    style: StyleHelper.textStyle16W600
                        .copyWith(color: Colors.black)),
                Text(
                  'with Chocolate',
                  style: StyleHelper.textStyle12W400
                      .copyWith(color: const Color(0xff9B9B9B)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$ 4.53',style: StyleHelper.textStyle18W600.copyWith(color:const  Color(0xff2F4B4E)),),
                    const SizedBox(
                        child: CoffeeIconButton(
                          icon: Icon(
                            Icons.add_rounded,
                            color: Colors.white,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class ElementImageWidget extends StatelessWidget {
  const ElementImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(children: [
        Container(
          width: 141,
          height: 132,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(
                  AssetsHelper.cappuccinoImagePath,
                ),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(
              16.0,
            ),
          ),
        ),
        Container(
          width: 51,
          height: 21,
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.16),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.star_rate_rounded,
                color: Colors.yellow,
                size: 15.0,
              ),
              SizedBox(
                width: 2.0,
              ),
              Text(
                '4.8',
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )
            ],
          ),
        )
      ]),
    );
  }
}
