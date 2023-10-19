import 'package:flutter/material.dart';

import '../models/insight_item_model.dart';

class InsightForYouWidget extends StatelessWidget {
  final InsightItem item;

  const InsightForYouWidget({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(item.imagePath, fit: BoxFit.cover),
    );
  }
}
