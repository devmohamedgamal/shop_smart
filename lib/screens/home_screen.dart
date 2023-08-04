import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_user/consts/app_constants.dart';
import 'package:shop_smart_user/widgets/arrival_widget.dart';
import 'package:shop_smart_user/widgets/title_text.dart';

import '../services/assets_mangr.dart';
import '../widgets/app_name_text.dart';
import '../widgets/categore_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AssetsManger.shoppingCart),
        title: const AppNameTextWidget(
          title: 'Shop Smart',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.22,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        AppConstants.banners[index],
                        fit: BoxFit.fill,
                      );
                    },
                    autoplay: true,
                    itemCount: AppConstants.banners.length,
                    pagination: const SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.white,
                        activeColor: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TitleTextWidget(
                  lebal: 'Latest arrival',
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: size.height * 0.15,
                width: double.infinity,
                child: Row(children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const ArrivalWidget();
                      },
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TitleTextWidget(
                  lebal: 'Categories',
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: List.generate(
                  AppConstants.categoryList.length,
                  (index) => CategoryWidget(
                    imageUrl: AppConstants.categoryList[index].imgUrl,
                    name: AppConstants.categoryList[index].name,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
