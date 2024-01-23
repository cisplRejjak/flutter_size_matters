library flutter_size_matters;
import 'package:flutter/material.dart';

class ScallingConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenHeight;
  static double? screenWidth;
  static double? shortDimension;
  static double? longDimension;
  static Object? platform;
  static bool isMobile = false;

  static double guidelineBaseWidth = 350;
  static double guidelineBaseHeight = 680;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData?.size.height;
    screenWidth = _mediaQueryData?.size.width;
    platform = Theme.of(context).platform;
    isMobile = (platform == TargetPlatform.android) || (platform == TargetPlatform.iOS) ? true : false;
    
    if (screenWidth! < screenHeight!) {
      shortDimension = screenWidth;
      longDimension = screenHeight;
    } else {
      shortDimension = screenHeight;
      longDimension = screenWidth;
    }
   
    switch (platform) {
      case (TargetPlatform.macOS || TargetPlatform.windows):
        guidelineBaseWidth = 600;
        guidelineBaseHeight = 1200;
        break;
      default:
        guidelineBaseWidth = 350;
        guidelineBaseHeight = 680;
    }
  }

  static double scale(double size){
    return shortDimension! / guidelineBaseWidth * size;
  }

  static double verticalScale(double size){
    return longDimension! / guidelineBaseHeight * size;
  }

  static double moderateScale(double size){
    double finalValue = size + (scale(size) - size) * 0.5;
    return finalValue;
  }

  static double moderateScaleVertical(double size){
    double finalValue = size + (verticalScale(size) - size) * 0.5;
    return finalValue;
  }

}
