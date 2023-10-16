import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final ColorScheme color;
  final Function() onTap;

  const CustomTab({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? color.secondary : color.tertiary,
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              color: isSelected ? color.onTertiary : color.tertiary,
            ),
          ),
        ],
      ),
    );
  }
}
