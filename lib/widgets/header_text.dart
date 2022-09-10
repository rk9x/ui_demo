import 'package:flutter/material.dart';
import 'package:ui_demo/utils/size_config.dart';
import 'package:ui_demo/utils/utils.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(
      {Key? key, required this.title, this.isArrow = false, this.childHeader})
      : super(key: key);

  final String title;
  final bool isArrow;
  final String? childHeader;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: commonTextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
              if (isArrow) ...[
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                  size: SizeConfiguration.imageSizeMultiplier * 10,
                )
              ] else ...[
                _emptyWidget()
              ],
            ],
          ),
          if ((childHeader ?? '').isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
              ),
              child: Text(
                childHeader ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: commonTextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            )
          ] else ...[
            _emptyWidget()
          ],
        ],
      ),
    );
  }

  Widget _emptyWidget() => const SizedBox();
}
