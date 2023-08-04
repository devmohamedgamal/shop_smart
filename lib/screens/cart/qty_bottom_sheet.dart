
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shop_smart_user/widgets/subtitle_text.dart';

class QtyBottomSheet extends StatelessWidget {
  const QtyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 10,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    log("index = $index");
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Center(
                        child: SubTitleTextWidget(lebal: '${index + 1}')),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
