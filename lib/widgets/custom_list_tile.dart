import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData leadingIcon;
  final String title;
  final String subtitle;

  const CustomListTile({
    super.key,
    required this.backgroundColor,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;

    return ListTile(
      contentPadding:
          const EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: color.onSecondary,
        size: 18,
      ),
      leading: CircleAvatar(
        radius: 23,
        backgroundColor: backgroundColor,
        child: Icon(
          leadingIcon,
          color: color.onSecondary,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          subtitle,
          style: TextStyle(fontSize: 14, color: color.onSecondary),
        ),
      ),
    );
  }
}
