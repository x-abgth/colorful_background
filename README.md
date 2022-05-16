<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
The colorful_background is a flutter library for creating a beautiful  background container with 
gradient colors that are always changing or animating.

## Features
* Create beautiful backgrounds
* Use multiple colors as backgrounds with animation
* Add decorations with containers to make the app more beautiful.<br><br>
![background without decoration](https://github.com/x-abgth/x-abgth/blob/master/img/colorful_background/bg1.gif)
![background with decoration](https://github.com/x-abgth/x-abgth/blob/master/img/colorful_background/bg2.gif)
## Getting started
This package is simple to use. It contains a duration and a list background colors as required 
attributes. Rest all the attributes has a default value, but you can change properties to accomplish your needs. 

### Add dependencies
```dart
dependencies:
  colorful_background: ^0.0.4
```

### Add imports
```dart
import 'package:flutter/material.dart';
import 'package:colorful_background/colorful_background.dart';
```

## Usage

```dart
ColorfulBackground(
  // Color changing animation duration
  duration: Duration(milliseconds: 300),
  // List extra decoration containers
  decoratorsList: [
    Positioned(
        top: MediaQuery.of(context).size.height / 2.5,
        left: MediaQuery.of(context).size.width / 2.5,
        child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle,
            ),
        ),
    ) ,
    Positioned(
        top: 100,
        left: 20,
        child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle,
            ),
        ),
    ),
    Positioned(
        top: 200,
        left: 90,
        child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle,
            ),
        ),
    ),
  ],
  // List colors to animate in the background
  backgroundColors: [
    const Color(0xFFFF5ACD),
    const Color(0xFFFBDA61),
    const Color(0xFFFBAB7E),
    const Color(0xFFF7CE68),
    const Color(0xFFFFFB7D),
  ],
  // A child widget
  child: Text("Check my background!"),
);
```

## ColorfulBackground attributes
* height: Takes a double type for the height of the widget
* width: Takes a double type for the width of the widget
* begin: Takes an Alignment property as begin of the gradient colors.
* end: Takes an Alignment property as end of the gradient colors.
* duration: Takes the duration of the animation for colors
* backgroundColors: Takes a list of colors for background animation
* decoratorsList: Takes a list of widgets as the decorations for the widget. It is recommended to wrap each child in Positioned widget.
* child: Takes a widget as child

## Conclusion
🌟 Star this repo & follow for more 😊

<a href="https://www.buymeacoffee.com/abgth" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

