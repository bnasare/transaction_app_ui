import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:transaction_app/widgets/user_profile_card.dart';

import '../widgets/bottom_appbar.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_list_tile.dart';

class UserScreen extends StatelessWidget {
  static const routeName = '/user';
  const UserScreen({super.key});
  final int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: color.surface.withOpacity(0.8),
              child: const UserProfileCard(),
            ),
            Container(
              color: color.surface.withOpacity(0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 10),
                    child: Text(
                      'Account Details',
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  CustomListTile(
                    backgroundColor: color.tertiary,
                    leadingIcon: IconlyLight.profile,
                    title: 'Detail Profile',
                    subtitle: 'Information account',
                  ),
                  const CustomDivider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  CustomListTile(
                    backgroundColor: color.tertiary,
                    leadingIcon: Icons.file_copy_outlined,
                    title: 'Transaction History',
                    subtitle: 'Your transaction history',
                  ),
                  const CustomDivider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: CustomListTile(
                      backgroundColor: color.tertiary,
                      leadingIcon: Icons.payment_rounded,
                      title: 'Payment Account',
                      subtitle: 'Manage your payment',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              color: color.surface.withOpacity(0.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 25, bottom: 10),
                    child: Text(
                      'Settings',
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  CustomListTile(
                    backgroundColor: color.tertiary,
                    leadingIcon: IconlyLight.notification,
                    title: 'Notifications',
                    subtitle: 'Your notification settings',
                  ),
                  const CustomDivider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  CustomListTile(
                    backgroundColor: color.tertiary,
                    leadingIcon: Icons.light_mode_outlined,
                    title: 'Theme',
                    subtitle: "Manage your app's theme",
                  ),
                  const CustomDivider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  CustomListTile(
                    backgroundColor: color.tertiary,
                    leadingIcon: Icons.payment_rounded,
                    title: 'Payment Account',
                    subtitle: 'Manage your payment',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(selectedIndex: 3),
    );
  }
}
