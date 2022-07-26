# Responsive

## How to import it?

```dart
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
```
```js
N/A
```


## How to use it?

### Dart

- Combined with `Breakpoints`, you are allowed to provide different values for each resolution in a declarative way using the `.value` method:

```dart
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
```


### JavaScript

- N/A
