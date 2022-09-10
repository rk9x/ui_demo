import 'package:flutter/material.dart';
import 'package:ui_demo/utils/extensions/string_extensions.dart';
import 'package:ui_demo/utils/utils.dart';
import 'package:ui_demo/widgets/header_text.dart';
import 'package:ui_demo/widgets/latest_stories_list.dart';

class LatestStories extends StatelessWidget {
  const LatestStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade600.withOpacity(
        0.7,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: HeaderText(
              title: 'Enjoy the latest Stories',
              childHeader: '+Assured 5% NeuCoins',
              isArrow: true,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(
              12.0,
            ),
            child: Column(
              children: [
                Image.asset(
                  "i_banner".pngImageAsset,
                  fit: BoxFit.contain,
                ),
                Container(
                  color: Colors.white,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 25,
                  ),
                  child: Text(
                    'What stands out in the iPhone 14 Series',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.visible,
                    maxLines: 2,
                    style: commonTextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: LatestStoriesList(),
          ),
        ],
      ),
    );
  }
}
