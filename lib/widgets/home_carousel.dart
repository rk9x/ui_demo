import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/utils/size_config.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.network(
                    item,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            )),
      ),
    )
    .toList();

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({Key? key}) : super(key: key);

  @override
  HomeCarouselState createState() => HomeCarouselState();
}

class HomeCarouselState extends State<HomeCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1.0,
              height: height * 0.28, //180.0,
              aspectRatio: 16 / 9,
              autoPlay: true,
              onPageChanged: (index, reason) =>
                  setState(() => _currentIndex = index)),
          items: imageSliders,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Expanded(
              child: Container(
                height: SizeConfiguration.heightMultiplier * 0.3, //0.004,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 5.0,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: _currentIndex == index
                      ? Colors.grey
                      : Colors.grey.withOpacity(0.3),
                ),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
