import 'package:flutter/material.dart';
import 'package:ui_demo/utils/extensions/string_extensions.dart';
import 'package:ui_demo/widgets/app_bar.dart';
import 'package:ui_demo/widgets/bumper_offer_mobiles.dart';
import 'package:ui_demo/widgets/coupon_banner.dart';
import 'package:ui_demo/widgets/deals_day_list.dart';
import 'package:ui_demo/widgets/grab_deals.dart';
import 'package:ui_demo/widgets/grid_explore.dart';
import 'package:ui_demo/widgets/header_text.dart';
import 'package:ui_demo/widgets/home_carousel.dart';
import 'package:ui_demo/widgets/hotel_booking_list.dart';
import 'package:ui_demo/widgets/image_banner.dart';
import 'package:ui_demo/widgets/latest_stories.dart';
import 'package:ui_demo/widgets/search_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const DemoAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey.shade600.withOpacity(0.6),
            flexibleSpace: const SearchHeader(),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: ListView(
                children: [
                  const HomeCarousel(),
                  const CouponBanner(),
                  const HeaderText(
                    title: 'Explore',
                  ),
                  const GridListExplore(),
                  const HeaderText(
                    title: 'Deals of the day',
                  ),
                  ImageBanner(
                    imageAsset: "coin_banner".pngImageAsset,
                  ),
                  const DealsDayList(),
                  const HeaderText(
                    title: 'Entertainment store - TV & Audio devices',
                    isArrow: true,
                  ),
                  const BumperOfferMobiles(),
                  const HeaderText(
                    title: 'Discovery zone on grocery',
                    childHeader: '+Assured 5% NeuCoins',
                  ),
                  ImageBanner(
                    imageAsset: "grocery_banner".pngImageAsset,
                    isAnimatedWidget: true,
                  ),
                  const GrabDealsOffers(),
                  const HeaderText(
                    title: 'Amazing offers on hotel bookings',
                    childHeader: '+ Assured 5% NeuCoins',
                  ),
                  ImageBanner(
                    imageAsset: "rewards_banner".pngImageAsset,
                  ),
                  const HotelBookingList(),
                  const LatestStories(),
                  ImageBanner(
                    imageAsset: "tata_banner".pngImageAsset,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
