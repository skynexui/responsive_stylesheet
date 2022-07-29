import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'package:with_flutter_sample/todo_app/screens/home_screen/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return TodoAppTheme(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todo App'),
        ),
        body: const _HomeScreenBody(),
        floatingActionButton: MainActionButton(
          onPressed: () {
            // ignore: avoid_print
            print('Main action button pressed');
          },
        ),
      ),
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var responsive = Responsive(context);
    return Container(
      width: responsive.screenWidth.percent(100),
      color: Colors.purple.shade100,
      child: GridItem(
        as: Column,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('100% of screen width'),
          Container(
            width: responsive.screenWidth.percent(75),
            color: Colors.red.shade100,
            child: const Text('75% of screen width'),
          ),
          Container(
            width: responsive.screenWidth.percent(50),
            color: Colors.blue.shade100,
            child: const Text('50% of screen width'),
          ),
          Container(
            width: responsive.screenWidth.percent(25),
            color: Colors.green.shade100,
            child: const Text('25% of screen width'),
          ),
        ],
      ),
    );
  }
}

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
