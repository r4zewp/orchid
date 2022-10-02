import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
    required this.size,
    required this.imageUrl,
    required this.opacity,
    required this.width,
    required this.fit,
  });

  final Size size;
  final String imageUrl;
  final double opacity;
  final double width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    assert(width != 0.0, "Width can't be equal to 0.0");
    return SizedBox(
      width: width,
      height: size.height * (684 / 1080),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: fit,
            opacity: opacity,
          ),
        ),
      ),
    );
  }
}
