import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/utils/size_config.dart';
import 'package:ui_demo/utils/utils.dart';
import 'package:ui_demo/widgets/grid_explore.dart';

final List<GridImageExploreModel> imagesGrid = [
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen.shade600,
    title: 'AirPods Pro 2: better sound at some price',
    url:
        'https://s.yimg.com/uu/api/res/1.2/4m_btHZhXLlf2RiVpTk.Jg--~B/Zmk9ZmlsbDtoPTQwNTt3PTY3NTthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/os/creatr-uploaded-images/2022-09/e6e611f0-2ed6-11ed-9c5f-9c8fe7f31c59.cf.jpg',
  ),
  GridImageExploreModel(
    Icons.local_grocery_store,
    color: Colors.red.shade300,
    title: 'Apple watch | Series 8',
    url: 'https://m.media-amazon.com/images/I/41riik6lG4L.jpg',
  ),
  GridImageExploreModel(
    Icons.electric_bolt,
    color: Colors.amberAccent.shade200,
    title: 'Best places to visit in September',
    url:
        'https://assets.traveltriangle.com/blog/wp-content/uploads/2016/07/limestone-rock-phang-nga-1-Beautiful-limestone-rock-in-the-ocean.jpg',
  ),
  GridImageExploreModel(
    Icons.fax_sharp,
    color: Colors.purple.shade100,
    title: 'Hotel and Rooms',
    url:
        'https://www.hotellinksolutions.com/images/blog/cac-nguon-booking-khach-san.jpg',
  ),
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen.withOpacity(0.4),
    title: 'Relinsh an authentic Onam feast at home',
    url:
        'https://images.moneycontrol.com/static-mcnews/2021/08/Onam-Sadhya_JW-Marriott-Juhu-2.jpg',
  ),
];

class LatestStoriesList extends StatelessWidget {
  const LatestStoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfiguration.heightMultiplier * 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: imagesGrid.length,
        separatorBuilder: (_, __) => const SizedBox(
          width: 15,
        ),
        itemBuilder: (context, int index) {
          final hotelBookingData = imagesGrid[index];
          return SizedBox(
            width: SizeConfiguration.widthMultiplier * 52,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    flex: 8,
                    fit: FlexFit.tight,
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
                          value: downloadProgress.progress,
                        ),
                      ),
                      errorWidget: (context, url, error) {
                        debugPrint('error::$error');
                        return const Icon(
                          Icons.error,
                          color: Colors.red,
                        );
                      },
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
                      ),
                      child: Text(
                        hotelBookingData.title,
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        style: commonTextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
