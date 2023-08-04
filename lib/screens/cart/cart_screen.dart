import 'package:flutter/material.dart';
import 'package:shop_smart_user/services/assets_mangr.dart';
import 'package:shop_smart_user/widgets/title_text.dart';
import '../../widgets/cart_empty_screen.dart';
import 'bottom_checkout.dart';
import 'cart_item_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
            body: CartEmpty(
              imagePath: AssetsManger.shoppingCart,
              title: 'Your cart is empty',
              subTitle:
                  'Looks like you have not added anything to your cart\nGo ahead & explore top categories',
              textBtn: 'Shop Now',
            ),
          )
        : Scaffold(
            bottomSheet: const BottomCheckout(),
            appBar: AppBar(
              leading: Image.asset(AssetsManger.shoppingCart),
              title: const TitleTextWidget(lebal: 'Cart(6)'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            body: ListView.builder(
              itemCount: 14,
              itemBuilder: (context, index) {
                return const CartItemWidget();
              },
            ),
          );
  }
}
