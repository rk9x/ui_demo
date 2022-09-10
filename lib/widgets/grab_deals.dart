import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/utils/size_config.dart';
import 'package:ui_demo/widgets/grid_explore.dart';

final List<GridImageExploreModel> imagesGrid = [
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen.shade600,
    title: 'boat Audio | From Rs.329',
    url:
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  ),
  GridImageExploreModel(
    Icons.local_grocery_store,
    color: Colors.red.shade300,
    title: 'Premium Audio | Store Upto 65% off',
    url:
        'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  ),
  GridImageExploreModel(
    Icons.electric_bolt,
    color: Colors.amberAccent.shade200,
    title: 'Portable Bluetooth Speakers | From Rs.599',
    url:
        'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ),
  GridImageExploreModel(
    Icons.fax_sharp,
    color: Colors.purple.shade100,
    title: 'Samsung Smart TVs | from Rs.15,490',
    url:
        'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  ),
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen.withOpacity(0.4),
    title: 'boat Audio | From Rs.329',
    url:
        'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  ),
  GridImageExploreModel(Icons.local_grocery_store,
      color: Colors.red,
      title: 'Premium Audio | Store Upto 65% off',
      url:
          'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'),
];

class GrabDealsOffers extends StatelessWidget {
  const GrabDealsOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.all(4.0),
      childAspectRatio: 8.5 / 10.0,
      physics: const BouncingScrollPhysics(), //
      children: imagesGrid.map((gridItem) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: gridItem.url ?? '',
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
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.white.withOpacity(0.9),
                  width: SizeConfiguration.widthMultiplier,
                  height: SizeConfiguration.heightMultiplier * 7.5,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 15,
                  ),
                  child: Text(
                    gridItem.title,
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
          ),
        ); //Card(child: Image.network(url));
      }).toList(),
    );
  }
}
