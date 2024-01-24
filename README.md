## flutter_size_matters
A streamlined, dependency-free toolkit for Flutter, designed to effortlessly resize your app's UI for optimal performance on various devices. Perfect for ensuring a consistent and seamless user experience across a diverse range of screen sizes.

## Screenshots
![flutter_size_matters](/flutter_size_matters/assets/with_m_ipad.png?raw=true "")

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
