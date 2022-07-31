import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class MainActionButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const MainActionButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var responsive = Responsive(context);
    const label = 'Add todo';
    const icon = Icon(Icons.create);

    var btnFull = FloatingActionButton.extended(
      onPressed: onPressed,
      label: const Text(label),
      icon: icon,
      backgroundColor: Colors.blue,
    );

    var btnCompact = FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.blue,
      child: icon,
    );

    return responsive.value({
      Breakpoints.xs: btnCompact,
      Breakpoints.md: btnFull,
    });
  }
}
