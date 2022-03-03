import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

extension IsMobile on BuildContext {
  bool get isMobile => Get.size.width < 850;
}

extension IsTablet on BuildContext {
  bool get isTablet => Get.size.width < 1100 && Get.size.width >= 850;
}

extension IsDesktop on BuildContext {
  bool get isDesktop => Get.size.width >= 1100;
}

