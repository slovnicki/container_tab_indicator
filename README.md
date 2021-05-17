# ContainerTabIndicator

[![pub package](https://img.shields.io/pub/v/container_tab_indicator.svg)](https://pub.dev/packages/container_tab_indicator)

Add customized `ContainerTabIndicator` as an `indicator` for your `TabBar`. You can manipulate width, height, color, radius, border and positioning within `Tab`.

```dart
class ContainerTabIndicator extends Decoration {
  final double width;
  final double widthFraction;
  final double height;
  final double heightFraction;
  final EdgeInsetsGeometry padding;
  final Color color;
  final BorderRadius radius;
  final double borderWidth;
  final Color borderColor;
  ...
}
```

## Example

The full example code can be found [here](https://github.com/slovnicki/container_tab_indicator/tree/master/example).

```dart
import 'package:container_tab_indicator/container_tab_indicator.dart';

...

TabBar(
  tabs: [
    Text('First', style: TextStyle(color: Colors.black)),
    Text('Second', style: TextStyle(color: Colors.black)),
  ],
  indicator: ContainerTabIndicator(
    width: 16,
    height: 16,
    radius: BorderRadius.circular(8.0),
    padding: const EdgeInsets.only(left: 36),
    borderWidth: 2.0,
    borderColor: Colors.black,
  ),
),
```

<p align="center">
<img src="https://raw.githubusercontent.com/slovnicki/container_tab_indicator/master/doc/assets/example.gif" alt="example" width="360">
</p>

## Contributing

This package is still in early stages. To see the upcoming features, check the [Issue board](https://github.com/slovnicki/container_tab_indicator/issues). If you notice any bugs not present in issues, please file a new issue. If you are willing to fix or enhance things yourself, you are very welcome to make a pull request.
