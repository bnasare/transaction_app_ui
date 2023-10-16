import 'package:flutter/material.dart';

class GoogleSocialAuthButton extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final VoidCallback onPressed;

  const GoogleSocialAuthButton({
    super.key,
    required this.image,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;

    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 50,
        decoration: BoxDecoration(
          color: color.surface,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: color.tertiary,
          ),
        ),
        child: Row(
          children: [
            Image(image: image, height: 25, width: 25),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
