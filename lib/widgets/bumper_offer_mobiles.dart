import 'package:flutter/material.dart';
import 'package:ui_demo/widgets/grid_explore.dart';

final List<GridImageExploreModel> imagesGrid = [
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen.shade600,
    title: 'boat Audio | From Rs.329',
  ),
  GridImageExploreModel(
    Icons.local_grocery_store,
    color: Colors.red.shade300,
    title: 'Premium Audio | Store Upto 65% off',
  ),
  GridImageExploreModel(
    Icons.electric_bolt,
    color: Colors.amberAccent.shade200,
    title: 'Portable Bluetooth Speakers | From Rs.599',
  ),
  GridImageExploreModel(
    Icons.fax_sharp,
    color: Colors.purple.shade100,
    title: 'Samsung Smart TVs | from Rs.15,490',
  ),
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen.withOpacity(0.4),
    title: 'boat Audio | From Rs.329',
  ),
  GridImageExploreModel(
    Icons.local_grocery_store,
    color: Colors.red,
    title: 'Premium Audio | Store Upto 65% off',
  ),
];

class BumperOfferMobiles extends StatelessWidget {
  const BumperOfferMobiles({Key? key}) : super(key: key);

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
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          child: Stack(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      flex: 8,
                      child: ColoredBox(
                        color: gridItem.color,
                        child: Icon(
                          gridItem.iconData,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(
                            10.0,
                          ),
                          child: Text(
                            gridItem.title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          )),
                    ),
                    //Icon(gridItem.iconData),
                  ]),
              Positioned(
                right: 0,
                top: 5,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 70,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(90),
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: const Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text('5% \nCoins'),
                          ))),
                ),
              ),
            ],
          ),
        ); //Card(child: Image.network(url));
      }).toList(),
    );
  }
}
