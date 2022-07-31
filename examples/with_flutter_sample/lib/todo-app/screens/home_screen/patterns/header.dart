import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var responsive = Responsive(context);

    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Column(
        children: const [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Search todos...',
            ),
          )
        ],
      ),
    );
  }
}
