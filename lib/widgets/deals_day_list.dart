import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/utils/size_config.dart';
import 'package:ui_demo/widgets/home_carousel.dart';

class DealsDayList extends StatelessWidget {
  const DealsDayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: SizeConfiguration.heightMultiplier * 30,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: imgList.length,
            separatorBuilder: (_, __) => const SizedBox(
              width: 15,
            ),
            itemBuilder: (context, int index) {
              return Stack(
                children: [
                  Column(
                    children: [
                      Flexible(
                        flex: 7,
                        fit: FlexFit.tight,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: imgList[index],
                            progressIndicatorBuilder: (
                              context,
                              url,
                              downloadProgress,
                            ) =>
                                Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress),
                            ),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.error,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          color: Colors.cyanAccent,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                flex: 2,
                                child: SizedBox(),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 20.0,
                                  ),
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 5,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: const Text('45% off'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 20,
                    bottom: 16,
                    child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '20% off',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        onPressed: () {}),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
