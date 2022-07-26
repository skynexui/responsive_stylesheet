import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class WidgetWithResponsiveOutput extends StatelessWidget {
  const WidgetWithResponsiveOutput({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var responsive = Responsive(context);
    var outputValue = responsive.value({
      Breakpoints.xs: 'xs',
      Breakpoints.sm: 'sm',
      Breakpoints.md: 'md',
      Breakpoints.lg: 'lg',
      Breakpoints.xl: 'xl',
    });
    return Text("Screen: $outputValue");
  }
}

const double screenHeight = 500;

void main() {
  Widget makeTestableWidget({required Widget child, required Size size}) {
    return MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(size: size),
        child: child,
      ),
    );
  }

  testWidgets(
    'when is in a xs screen, returns the xs value',
    (WidgetTester tester) async {
      var screenWidth = breakpoints.sm - 1;
      var testableWidget = makeTestableWidget(
        child: const WidgetWithResponsiveOutput(),
        size: Size(screenWidth, screenHeight),
      );
      await tester.pumpWidget(testableWidget);

      expect(find.text('Screen: xs'), findsOneWidget);
    },
  );

  testWidgets(
    'when is in a sm screen, returns the sm value',
    (WidgetTester tester) async {
      var screenWidth = breakpoints.md - 1;
      var testableWidget = makeTestableWidget(
        child: const WidgetWithResponsiveOutput(),
        size: Size(screenWidth, screenHeight),
      );
      await tester.pumpWidget(testableWidget);

      expect(find.text('Screen: sm'), findsOneWidget);
    },
  );

  testWidgets(
    'when is in a md screen, returns the md value',
    (WidgetTester tester) async {
      var screenWidth = breakpoints.lg - 1;
      var testableWidget = makeTestableWidget(
        child: const WidgetWithResponsiveOutput(),
        size: Size(screenWidth, screenHeight),
      );
      await tester.pumpWidget(testableWidget);

      expect(find.text('Screen: md'), findsOneWidget);
    },
  );

  testWidgets(
    'when is in a lg screen, returns the lg value',
    (WidgetTester tester) async {
      var screenWidth = breakpoints.xl - 1;
      var testableWidget = makeTestableWidget(
        child: const WidgetWithResponsiveOutput(),
        size: Size(screenWidth, screenHeight),
      );
      await tester.pumpWidget(testableWidget);

      expect(find.text('Screen: lg'), findsOneWidget);
    },
  );

  testWidgets(
    'when is in a xl screen, returns the xl value',
    (WidgetTester tester) async {
      var screenWidth = breakpoints.xl;
      var testableWidget = makeTestableWidget(
        child: const WidgetWithResponsiveOutput(),
        size: Size(screenWidth, screenHeight),
      );
      await tester.pumpWidget(testableWidget);

      expect(find.text('Screen: xl'), findsOneWidget);
    },
  );
}
