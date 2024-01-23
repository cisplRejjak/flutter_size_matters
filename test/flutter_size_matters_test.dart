import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_size_matters/flutter_size_matters.dart';

void main() {
  testWidgets('Test ScallingConfig Initialization', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            ScallingConfig().init(context);
            return Container();
          },
        ),
      ),
    );

    // Test Initialization values
    expect(ScallingConfig.screenHeight, isNotNull);
    expect(ScallingConfig.screenWidth, isNotNull);
    expect(ScallingConfig.shortDimension, isNotNull);
    expect(ScallingConfig.longDimension, isNotNull);
    expect(ScallingConfig.platform, isNotNull);
    expect(ScallingConfig.isMobile, isNotNull);

    expect(ScallingConfig.guidelineBaseWidth, equals(350));
    expect(ScallingConfig.guidelineBaseHeight, equals(680));
  });

  group('Test start, scale, verticalScale, moderateScale, moderateScaleVertical', () {
    test('Test Scale Functions', () {
      expect(ScallingConfig.scale(100), equals(100 * (ScallingConfig.shortDimension! / ScallingConfig.guidelineBaseWidth)));
    });

    test('Test VerticalScale Functions', () {
      expect(ScallingConfig.verticalScale(100), equals(100 * (ScallingConfig.longDimension! / ScallingConfig.guidelineBaseHeight)));
    });

    test('Test moderateScale Functions', () {
      expect(ScallingConfig.moderateScale(100),equals(100 + (ScallingConfig.scale(100) - 100) * 0.5));
    });

    test('Test moderateScaleVertical Functions', () {
      expect(ScallingConfig.moderateScaleVertical(100),equals(100 + (ScallingConfig.verticalScale(100) - 100) * 0.5));
    });

    test('Gobindo',(){
       expect("gobindo",equals("gobindo"));
    });
  });
}
