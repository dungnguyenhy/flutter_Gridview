import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class PageFadeAnimation extends StatelessWidget {
  final Widget child;
  final int delay;
  const PageFadeAnimation(this.child,this.delay,{Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return PlayAnimation<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration:  Duration(milliseconds: delay.round()),
      curve: Curves.easeOut,
      builder: (context, child, value) {
        return Transform.scale(
          scale: value,
          child: child,
        );
      },
      child:child,
    );
  }
}