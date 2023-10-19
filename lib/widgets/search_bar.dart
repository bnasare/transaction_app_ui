import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SearchBarWidget extends StatelessWidget {
  final ColorScheme color;

  const SearchBarWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: color.tertiary.withOpacity(0.2),
            hintText: 'Track your package',
            hintStyle: TextStyle(
              color: color.onPrimary,
              fontSize: 17,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                right: 10,
                bottom: 4,
              ),
              child: Icon(
                IconlyLight.search,
                color: color.onPrimary,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                IconlyLight.scan,
                color: color.onPrimary,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
          ),
        ),
      ),
    );
  }
}
