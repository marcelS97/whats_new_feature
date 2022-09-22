import 'package:flutter/material.dart';
import 'package:whats_new_feature/src/widgets/stadium_button.dart';

///
class ContinueButton extends StatelessWidget {
  ///
  const ContinueButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
    this.accentColor,
  }) : super(key: key);

  ///
  final VoidCallback onTap;

  ///
  final String buttonText;

  ///
  final Color? accentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 40,
      ),
      child: Center(
        child: StadiumButton(
          color: accentColor ?? Theme.of(context).colorScheme.secondary,
          onTap: onTap,
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
