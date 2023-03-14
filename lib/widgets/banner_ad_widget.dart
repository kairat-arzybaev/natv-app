import 'package:flutter/material.dart';

class BannerAdView extends StatelessWidget {
  const BannerAdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: 85,
              width: 120,
              child: Image.asset('assets/images/logo.png')),
          const SizedBox(
            height: 10,
          ),
        ]));
  }
}
