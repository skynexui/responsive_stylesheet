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
    // var responsive = Responsive(context);
    return GridItem(
      children: [
        Container(
          // width: responsive.screenWidth().percent(100),
          color: Colors.red.shade100,
          child: const Text('Sample page'),
        )
      ],
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
