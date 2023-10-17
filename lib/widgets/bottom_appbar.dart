import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:transaction_app/screens/home_screen.dart';
import 'package:transaction_app/screens/user_screen.dart';

import 'bottom_appbar_item.dart';

class CustomBottomAppBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomAppBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return BottomAppBar(
      height: 70,
      elevation: 0,
      color: color.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TabItem(
            icon: IconlyLight.home,
            label: 'Home',
            index: 0,
            color: color,
            isSelected: selectedIndex == 0,
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          TabItem(
            icon: CupertinoIcons.cube,
            label: 'Packet',
            index: 1,
            color: color,
            isSelected: selectedIndex == 1,
            onTap: () {},
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: FloatingActionButton(
              backgroundColor: color.secondary,
              onPressed: () {},
              child: Icon(
                CupertinoIcons.add,
                size: 28,
                color: color.surface,
              ),
            ),
          ),
          TabItem(
            icon: IconlyLight.discount,
            label: 'Discount',
            index: 2,
            color: color,
            isSelected: selectedIndex == 2,
            onTap: () {},
          ),
          TabItem(
            icon: IconlyLight.profile,
            label: 'Profile',
            index: 3,
            color: color,
            isSelected: selectedIndex == 3,
            onTap: () {
              Navigator.pushNamed(context, UserScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
