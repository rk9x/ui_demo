import 'package:flutter/material.dart';
import 'package:ui_demo/utils/extensions/string_extensions.dart';
import 'package:ui_demo/utils/size_config.dart';
import 'package:ui_demo/utils/utils.dart';

class CouponBanner extends StatelessWidget {
  const CouponBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Neu',
                        textAlign: TextAlign.center,
                        style: commonTextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Coins',
                        textAlign: TextAlign.center,
                        style: commonTextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '0',
                    style: commonTextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.asset(
                'coupon_banner'.pngImageAsset,
                height: SizeConfiguration.heightMultiplier * 12,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
