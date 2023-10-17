import 'package:flutter/material.dart';

import '../widgets/bottom_appbar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);
  final int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Shoop',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar(selectedIndex: 0));
  }
}
