import 'package:flutter/material.dart';

final List<GridImageExploreModel> imagesGrid = [
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen.shade600,
    title: 'Mobiles',
  ),
  GridImageExploreModel(
    Icons.local_grocery_store,
    color: Colors.red.shade300,
    title: 'Grocery',
  ),
  GridImageExploreModel(
    Icons.electric_bolt,
    color: Colors.amberAccent.shade200,
    title: 'Electronics',
  ),
  GridImageExploreModel(
    Icons.fax_sharp,
    color: Colors.purple.shade100,
    title: 'Fashion',
  ),
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen,
    title: 'Mobiles',
  ),
  GridImageExploreModel(
    Icons.local_grocery_store,
    color: Colors.red,
    title: 'Grocery',
  ),
  GridImageExploreModel(
    Icons.electric_bolt,
    color: Colors.amberAccent.shade700,
    title: 'Electronics',
  ),
  GridImageExploreModel(
    Icons.fax_sharp,
    color: Colors.purple,
    title: 'Fashion',
  ),
  GridImageExploreModel(
    Icons.mobile_friendly,
    color: Colors.lightGreen,
    title: 'Mobiles',
  ),
  GridImageExploreModel(
    Icons.local_grocery_store,
    color: Colors.red,
    title: 'Grocery',
  ),
  GridImageExploreModel(
    Icons.electric_bolt,
    color: Colors.amberAccent,
    title: 'Electronics',
  ),
  GridImageExploreModel(
    Icons.fax_sharp,
    color: Colors.purple.shade400,
    title: 'Fashion',
  ),
];

class GridListExplore extends StatelessWidget {
  const GridListExplore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      padding: const EdgeInsets.all(4.0),
      childAspectRatio: 10.5 / 8.0,
      physics: const NeverScrollableScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ), //
      children: imagesGrid.map((gridItem) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Card(
              color: gridItem.color,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Text(
                          gridItem.title,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Icon(gridItem.iconData),
                    ]),
              )),
        ); //Card(child: Image.network(url));
      }).toList(),
    );
  }
}

class GridImageExploreModel {
  final Color color;
  final String title;
  final IconData iconData;
  final String? url;

  GridImageExploreModel(
    this.iconData, {
    required this.color,
    required this.title,
    this.url,
  });
}
