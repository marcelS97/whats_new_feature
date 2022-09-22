import 'package:flutter/material.dart';
import 'package:whats_new_feature/src/widgets/continue_button.dart';
import 'package:whats_new_feature/src/widgets/whats_new_feature_tile.dart';

class WhatsNewFeaturePage extends StatelessWidget {
  /// Whats new feature page
  const WhatsNewFeaturePage({
    Key? key,
    required this.features,
    required this.appName,
    required this.headingText,
    required this.buttonColor,
    required this.buttonText,
    required this.buttonTextColor,
  }) : super(key: key);

  /// list of whats new features
  final List<WhatsNewFeatureTile> features;

  /// app name
  final String appName;

  /// accent button color
  final Color? buttonColor;
  
  /// button text color
  final Color? buttonTextColor;

  /// Text in Continue Button
  final String buttonText;

  /// Heading text above the new features like "Whats's new in ..."
  final String headingText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          _buildWhatsNewFeatures(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ContinueButton(
              buttonText: buttonText,
              textColor: buttonTextColor,
              accentColor: buttonColor,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWhatsNewFeatures() {
    return ListView(
      children: [
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            headingText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ...features,
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
