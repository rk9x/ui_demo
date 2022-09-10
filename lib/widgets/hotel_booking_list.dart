import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/utils/size_config.dart';
import 'package:ui_demo/widgets/grid_explore.dart';

final List<GridImageExploreModel> hotelBookingList = [
  GridImageExploreModel(
    Icons.local_grocery_store,
    color: Colors.red.shade300,
    title: 'Your oasis close to home',
    url:
        'https://www.hotellinksolutions.com/images/blog/cac-nguon-booking-khach-san.jpg',
  ),
  GridImageExploreModel(
    Icons.electric_bolt,
    color: Colors.amberAccent.shade200,
    title: 'Drive away to luxury retreats',
    url:
        'https://r1imghtlak.mmtcdn.com/742d96mvud4idd9edq7cqml6005o.jpg?&output-quality=75&output-format=webp&downsize=821:550&crop=821:550',
  ),
  GridImageExploreModel(
    Icons.fax_sharp,
    color: Colors.purple.shade100,
    title: 'Experience blissful villas',
    url:
        'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/htl-imgs/202203031530499235-f84e7a8a9a3011ec95770a58a9feac02.jpg?&output-quality=75&downsize=910:612&crop=910:612;4,0&output-format=webp&downsize=821:550&crop=821:550',
  ),
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen.withOpacity(0.4),
    title: 'Make your holidays unforgettable',
    url:
        'https://play-lh.googleusercontent.com/Pmx1ZIGytYXCFbyAU4GPKwOyU3xvoAHj4cR53A-qW-whsA2wOGpLzUqliBlgVdOt-Q=w3840-h2160-rw',
  ),
  GridImageExploreModel(Icons.local_grocery_store,
      color: Colors.red,
      title: 'Your oasis close to home',
      url:
          'https://www.hotellinksolutions.com/images/blog/cac-nguon-booking-khach-san.jpg'),
];

class HotelBookingList extends StatelessWidget {
  const HotelBookingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: SizeConfiguration.heightMultiplier * 30,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: hotelBookingList.length,
            separatorBuilder: (_, __) => const SizedBox(
              width: 15,
            ),
            itemBuilder: (context, int index) {
              final hotelBookingData = hotelBookingList[index];
              return Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: SizeConfiguration.widthMultiplier * 40,
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: hotelBookingData.url ?? '',
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
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.white.withOpacity(0.9),
                      width: SizeConfiguration.widthMultiplier,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                      child: Text(
                        hotelBookingData.title,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
