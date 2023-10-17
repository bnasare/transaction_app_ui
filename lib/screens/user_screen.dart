import 'package:flutter/material.dart';

import '../widgets/bottom_appbar.dart';

class UserScreen extends StatelessWidget {
  static const routeName = '/user';
  const UserScreen({super.key});
  final int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;

    return const Scaffold(
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 3),
    );
  }
}
