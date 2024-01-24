# Responsive Design Mastery for Flutter: Media Query and Scaling Configuration
Discover the ultimate solution for Flutter app development with our streamlined and dependency-free toolkit. Seamlessly resize your app's UI with precision, ensuring optimal performance on a myriad of devices. Our comprehensive media query and scaling configuration empower you to effortlessly create a consistent and seamless user experience across diverse screen sizes. Elevate your Flutter applications to the next level with this indispensable tool for responsive design.

## Screenshots
- Left one without this package
- Right one with this package

#### Web

<p align="center">
  <img src="/assets/without_m_web.png?raw=true" alt="Image 1" width="30%">
  <img src="/assets/with_m_web.png?raw=true" alt="Image 2" width="30%">
</p>

#### Mobile
<p align="center">
  <img src="/assets/without_m_mobile.png?raw=true" alt="Image 3" width="30%">
  <img src="/assets/with_m_mobile.png?raw=true" alt="Image 4" width="30%">
</p>

#### iPad
<p align="center">
  <img src="/assets/without_m_ipad.png?raw=true" alt="Image 5" width="30%">
  <img src="/assets/with_m_ipad.png?raw=true" alt="Image 6" width="30%">
</p>

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_size_matters/flutter_size_matters.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScallingConfig().init(context);
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!',style: TextStyle(fontSize: ScallingConfig.moderateScale(14)),),
        ),
      ),
    );
  }
}
```

## Additional information
This package will support Windows, macOS, Linux, Android, iOS, and all modern browsers.
