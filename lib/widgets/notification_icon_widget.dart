import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class NotificationIcon extends StatelessWidget {
  final ColorScheme color;

  const NotificationIcon({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 25),
      child: InkWell(
        onTap: () {},
        child: CircleAvatar(
          radius: 24,
          backgroundColor: color.tertiary.withOpacity(0.2),
          child: Badge(
            alignment: Alignment.topRight,
            backgroundColor: Colors.transparent,
            label: Material(
              color: color.surface,
              shape: const CircleBorder(),
              child: const Padding(
                padding: EdgeInsets.all(1.0),
                child: Icon(
                  Icons.circle,
                  color: Colors.red,
                  size: 9,
                ),
              ),
            ),
            child: Icon(
              IconlyLight.notification,
              size: 26,
              color: color.surface,
            ),
          ),
        ),
      ),
    );
  }
}
