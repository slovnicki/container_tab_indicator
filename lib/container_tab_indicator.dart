library container_tab_indicator;

import 'package:flutter/material.dart';

class ContainerTabIndicator extends Decoration {
  final double width;
  final double height;
  final BorderRadius radius;
  final Color color;
  final double borderWidth;
  final Color borderColor;

  const ContainerTabIndicator({
    this.width,
    this.height,
    this.radius: BorderRadius.zero,
    this.color: const Color(0xFF2196F3),
    this.borderWidth: 0.0,
    this.borderColor: const Color(0xFF2196F3),
  });

  @override
  _ContainerTabPainter createBoxPainter([void Function() onChanged]) {
    return _ContainerTabPainter(
      onChanged,
      indicator: this,
    );
  }
}

class _ContainerTabPainter extends BoxPainter {
  final ContainerTabIndicator indicator;

  _ContainerTabPainter(
    void Function() onChanged, {
    this.indicator: const ContainerTabIndicator(),
  }) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    double width = this.indicator.width ?? configuration.size.width;
    double height = this.indicator.height ?? configuration.size.height;

    if (this.indicator.borderWidth > 0.0) {
      final RRect borderRRect = _buildRRect(
        offset,
        configuration,
        width - this.indicator.borderWidth,
        height - this.indicator.borderWidth,
      );
      final Paint paint = Paint()
        ..color = this.indicator.borderColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = this.indicator.borderWidth;
      canvas.drawRRect(borderRRect, paint);

      width -= 2 * this.indicator.borderWidth;
      height -= 2 * this.indicator.borderWidth;
    }

    final RRect indicatorRRect = _buildRRect(
      offset,
      configuration,
      width,
      height,
    );
    final Paint paint = Paint()
      ..color = this.indicator.color
      ..style = PaintingStyle.fill;
    canvas.drawRRect(indicatorRRect, paint);
  }

  RRect _buildRRect(
    Offset offset,
    ImageConfiguration configuration,
    double width,
    double height,
  ) {
    return RRect.fromRectAndCorners(
      Rect.fromCenter(
        center: Offset(offset.dx + configuration.size.width / 2,
            configuration.size.height / 2),
        width: width,
        height: height,
      ),
      topLeft: this.indicator.radius.topLeft,
      topRight: this.indicator.radius.topRight,
      bottomRight: this.indicator.radius.bottomRight,
      bottomLeft: this.indicator.radius.bottomLeft,
    );
  }
}
