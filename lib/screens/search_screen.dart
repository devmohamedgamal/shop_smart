import 'dart:developer';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_user/screens/Products/product_widget.dart';

import '../services/assets_mangr.dart';
import '../widgets/app_name_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchTextchController;

  @override
  void initState() {
    searchTextchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchTextchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset(AssetsManger.shoppingCart),
          title: const AppNameTextWidget(
            title: 'Search',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            children: [
              TextField(
                controller: searchTextchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // setState(() {
                      searchTextchController.clear();
                      FocusScope.of(context).unfocus();
                      // });
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                  ),
                ),
                onChanged: (value) {},
                onSubmitted: (value) {
                  log(value);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: DynamicHeightGridView(
                  itemCount: 40,
                  builder: (context, index) {
                    return const ProductWidget();
                  },
                  crossAxisCount: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
