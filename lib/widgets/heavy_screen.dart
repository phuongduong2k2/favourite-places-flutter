import 'package:flutter/material.dart';

class HeavyScreen extends StatefulWidget {
  const HeavyScreen({super.key, required this.child});

  final Widget child;

  @override
  State<HeavyScreen> createState() => _HeavyScreenState();
}

class _HeavyScreenState extends State<HeavyScreen> {
  bool _isAnimationDone = false;
  Animation<double>? _animation;

  void _animationStatusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      setState(() {
        _isAnimationDone = true;
      });
      // Remove listener to avoid memory leaks
      _animation?.removeStatusListener(_animationStatusListener);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _animation = ModalRoute.of(context)?.animation;

    if (_animation != null) {
      if (_animation!.isCompleted) {
        _isAnimationDone = true;
      } else {
        _animation!.addStatusListener(_animationStatusListener);
      }
    } else {
      _isAnimationDone = false;
    }
  }

  @override
  void dispose() {
    _animation?.removeStatusListener(_animationStatusListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return !_isAnimationDone
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : widget.child;
  }
}
