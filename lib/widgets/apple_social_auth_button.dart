import 'package:flutter/material.dart';

class AppleSocialAuthButton extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final VoidCallback onPressed;

  const AppleSocialAuthButton({
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
        margin: const EdgeInsets.only(left: 20),
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
            Image(image: image, height: 40, width: 40),
            const SizedBox(width: 3),
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
