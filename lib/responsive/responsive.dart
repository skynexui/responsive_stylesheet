import 'package:flutter/material.dart';

enum Breakpoints {
  xs,
  sm,
  md,
  lg,
  xl,
}

class ThemeBreakpoints {
  double xs = 0;
  double sm = 480;
  double md = 768;
  double lg = 920;
  double xl = 1200;
}

var themeBreakpoints = ThemeBreakpoints();

Breakpoints getCurrentBreakpoint(double screenWidth) {
  if (screenWidth < themeBreakpoints.sm) {
    return Breakpoints.xs;
  }
  if (screenWidth < themeBreakpoints.md) {
    return Breakpoints.sm;
  }

  if (screenWidth < themeBreakpoints.lg) {
    return Breakpoints.md;
  }

  if (screenWidth < themeBreakpoints.xl) {
    return Breakpoints.lg;
  }

  return Breakpoints.xl;
}

// ============================================================
// [Value resolver]
// ============================================================
const Map<Breakpoints, double> breakpointsOrderByBreakpoint = {
  Breakpoints.xs: 0,
  Breakpoints.sm: 1,
  Breakpoints.md: 2,
  Breakpoints.lg: 3,
  Breakpoints.xl: 4,
};
const Map<int, Breakpoints> breakpointsOrderByOrder = {
  0: Breakpoints.xs,
  1: Breakpoints.sm,
  2: Breakpoints.md,
  3: Breakpoints.lg,
  4: Breakpoints.xl,
};
dynamic resolveValueForBreakpoint(
    Map<Breakpoints, dynamic> value, Breakpoints activeBreakpoint) {
  if (value.containsKey(activeBreakpoint) && value[activeBreakpoint] != null) {
    return value[activeBreakpoint];
  }

  var currentBreakpointOrder = breakpointsOrderByBreakpoint[activeBreakpoint];

  // ignore: todo
  // TODO: I know that I can do it better, but not now
  for (var i = currentBreakpointOrder; i! >= 0; i--) {
    var breakpoint = breakpointsOrderByOrder[i];
    if (value.containsKey(breakpoint) && value[breakpoint] != null) {
      // Remove px
      return value[breakpoint];
    }
  }
}

Breakpoints getActiveBreakpoint(BuildContext context) {
  var screenSize = MediaQuery.of(context).size.width;
  var activeBreakpoint = getCurrentBreakpoint(screenSize);

  return activeBreakpoint;
}

ValueType valueForBreakpoint<ValueType>(
  Map<Breakpoints, ValueType> value,
  BuildContext context,
) {
  var activeBreakpoint = getActiveBreakpoint(context);
  return resolveValueForBreakpoint(value, activeBreakpoint);
}

class Responsive {
  final BuildContext context;

  Responsive(this.context);

  getScreenWidth() {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth;
  }

  ValueType value<ValueType>(
    Map<Breakpoints, ValueType> value,
  ) {
    var activeBreakpoint = getActiveBreakpoint(context);
    return resolveValueForBreakpoint(value, activeBreakpoint);
  }
}
