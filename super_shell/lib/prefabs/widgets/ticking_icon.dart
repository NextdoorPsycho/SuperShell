import 'dart:math' as math;

import 'package:flutter/material.dart';

class TickingIcon extends StatefulWidget {
  final IconData icon;
  final double size;

  const TickingIcon({Key? key, required this.icon, required this.size})
      : super(key: key);

  @override
  _TickingIconState createState() => _TickingIconState();
}

class _TickingIconState extends State<TickingIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _segmentAnimations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 12),
      vsync: this,
    );

    _segmentAnimations = List.generate(12, (index) {
      final start = index / 12.0;
      final end = (index + 1) / 12.0;
      // Adjusting each segment to complete its animation in the first half (0.5 seconds)
      // and remain steady for the next half (0.5 seconds)
      return Tween<double>(
              begin: index * (2 * math.pi / 12),
              end: (index + 1) * (2 * math.pi / 12))
          .animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(start, start + 0.5 / 12,
              curve: Curves.easeInOutQuint), // Animation completes quickly
        ),
      );
    });

    _controller
      ..addListener(() {
        setState(() {});
      })
      ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    // Calculate the current angle based on which interval the controller's value falls into
    double angle = 0.0;
    for (int i = 0; i < _segmentAnimations.length; i++) {
      if (_controller.value >= i / 12.0 && _controller.value < (i + 1) / 12.0) {
        angle = _segmentAnimations[i].value;
        break;
      }
    }

    return Transform.rotate(
      angle: angle,
      child: Icon(
        widget.icon,
        size: widget.size,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
