import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CustomBottomAppBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomAppBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;

    return BottomAppBar(
      shadowColor: Colors.transparent,
      color: color.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //! Home Tab
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  IconlyLight.home,
                  color: selectedIndex == 0
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.tertiary,
                ),
                const SizedBox(height: 5),
                Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: selectedIndex == 0
                        ? FontWeight.w600
                        : FontWeight.normal,
                    color:
                        selectedIndex == 0 ? color.onTertiary : color.tertiary,
                  ),
                )
              ],
            ),
          ),

          //! Compass Tab
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  CupertinoIcons.cube,
                  color: selectedIndex == 1
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.tertiary,
                ),
                const SizedBox(height: 5),
                Text(
                  'Packet',
                  style: TextStyle(
                    fontWeight: selectedIndex == 1
                        ? FontWeight.w600
                        : FontWeight.normal,
                    color:
                        selectedIndex == 1 ? color.onTertiary : color.tertiary,
                  ),
                )
              ],
            ),
          ),

          //! Add Button
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: SizedBox(
              height: 50,
              width: 50,
              child: FloatingActionButton(
                backgroundColor: color.secondary,
                onPressed: () {},
                child: const Icon(
                  CupertinoIcons.add,
                  size: 28,
                ),
              ),
            ),
          ),

          //! Bookmark Tab
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  IconlyLight.discount,
                  color: selectedIndex == 2
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.tertiary,
                ),
                const SizedBox(height: 5),
                Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: selectedIndex == 2
                        ? FontWeight.w600
                        : FontWeight.normal,
                    color:
                        selectedIndex == 2 ? color.onTertiary : color.tertiary,
                  ),
                )
              ],
            ),
          ),

          //! Profile Tab
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  IconlyLight.profile,
                  color: selectedIndex == 3
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.tertiary,
                ),
                const SizedBox(height: 3),
                Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: selectedIndex == 3
                        ? FontWeight.w600
                        : FontWeight.normal,
                    color:
                        selectedIndex == 3 ? color.onTertiary : color.tertiary,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
