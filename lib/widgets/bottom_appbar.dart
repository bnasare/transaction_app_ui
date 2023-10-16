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
    return BottomAppBar(
      shadowColor: Colors.transparent,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //! Home Tab
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(
                  selectedIndex == 0 ? IconlyBold.home : IconlyLight.home,
                  color: selectedIndex == 0
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.tertiary,
                  size: 25.0,
                ),
                onPressed: () {},
              ),
              if (selectedIndex == 0)
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12.0,
                  ),
                  child: Container(
                    width: 3,
                    height: 3,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),

          //! Compass Tab
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(
                  selectedIndex == 1
                      ? CupertinoIcons.compass_fill
                      : CupertinoIcons.compass,
                  color: selectedIndex == 1
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.tertiary,
                  size: 29,
                ),
                onPressed: () {
                  if (selectedIndex != 1) {}
                },
              ),
              if (selectedIndex == 1)
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12.0,
                  ),
                  child: Container(
                    width: 3,
                    height: 3,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),

          //! Add Button
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: SizedBox(
              height: 50,
              width: 50,
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                onPressed: () {},
                child: const Icon(
                  CupertinoIcons.add,
                  size: 28,
                ),
              ),
            ),
          ),

          //! Bookmark Tab
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(
                  IconlyLight.bookmark,
                  color: selectedIndex == 2
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.tertiary,
                  size: 25.0,
                ),
                onPressed: () {
                  if (selectedIndex != 2) {}
                },
              ),
              if (selectedIndex == 2)
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12.0,
                  ),
                  child: Container(
                    width: 3,
                    height: 3,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),

          //! Profile Tab
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(
                  IconlyLight.profile,
                  color: selectedIndex == 3
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.tertiary,
                  size: 25.0,
                ),
                onPressed: () {
                  if (selectedIndex != 3) {}
                },
              ),
              if (selectedIndex == 3)
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12.0,
                  ),
                  child: Container(
                    width: 3,
                    height: 3,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
