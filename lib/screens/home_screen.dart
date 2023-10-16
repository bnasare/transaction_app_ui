import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../widgets/bottom_appbar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  final int selectedIndex = 0; // Define the selectedIndex here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shoop',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      bottomNavigationBar: CustomTab(
        icon: IconlyLight.home,
        label: 'Home',
        isSelected: selectedIndex == 0,
        color: Theme.of(context).colorScheme,
        onTap: () {
          // Add your logic for the Home tab here
        },
      ),
    );
  }
}
