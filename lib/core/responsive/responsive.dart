import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  bool get isMobile => Get.size.width < 850;

  bool get isTablet => Get.size.width < 1100 && Get.size.width >= 850;

  bool get isDesktop => Get.size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    if (isDesktop) {
      return desktop;
    } else if (isTablet && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
