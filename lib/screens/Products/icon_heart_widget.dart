import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class IconHeartWidget extends StatefulWidget {
  const IconHeartWidget(
      {super.key,
      required this.size,
      this.color = Colors.transparent,
      this.onTap});
  final double size;
  final Color color;
  final void Function()? onTap;

  @override
  State<IconHeartWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<IconHeartWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      borderRadius: BorderRadius.circular(50),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        color: widget.color,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Icon(
            IconlyLight.heart,
            size: widget.size,
          ),
        ),
      ),
    );
  }
}
