import 'package:flutter/material.dart';
import 'package:ui_demo/widgets/animated_banner.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner(
      {Key? key, required this.imageAsset, this.isAnimatedWidget = false})
      : super(key: key);

  final String imageAsset;
  final bool isAnimatedWidget;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(
              12.0,
            ),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: <Widget>[
                      Image.asset(
                        imageAsset,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  if (isAnimatedWidget) ...[
                    const Positioned(
                      top: 0,
                      left: 0,
                      child: AnimatedTextWidget(),
                    ),
                  ] else ...[
                    const SizedBox()
                  ],
                ],
              ),
            )));
  }
}
