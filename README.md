# @skynexui/responsive_stylesheet

> You don't need to be worried just because you have to support multiple screens 📺 🖥 💻 📱 

[<img width="150px" src="https://www.datocms-assets.com/31049/1618983297-powered-by-vercel.svg" />](https://vercel.com/?utm_source=skynexui&utm_campaign=oss)

![Downloads](https://img.shields.io/npm/dw/@skynexui/responsive_stylesheet?color=orange) ![Current Version](https://img.shields.io/npm/v/@skynexui/responsive_stylesheet?color=success&label=version&cache=1) [![Flutter Package](https://img.shields.io/badge/skynexui__responsive__stylesheet-fluttter-blue)](https://pub.dev/packages/skynexui_responsive_stylesheet) [![NPM Package](https://img.shields.io/badge/@skynexui/responsive__stylesheet-npm-red)](https://www.npmjs.com/package/@skynexui/responsive_stylesheet)

It's a set of common utility strategies to work with responsive styles with CSS in JS and Flutter

## Summary
- [Dart/Flutter](#dartflutter)
- [JavaScript/React](#javascriptreact)

## Dart/Flutter 🐦

- [Check the examples to see the usage](https://github.com/skynexui/responsive_stylesheet/blob/main/examples/with_flutter_sample/lib/main.dart#L43)

### How to install?

```sh
flutter pub add skynexui_responsive_stylesheet
```

### Demo

- [Check it out](https://responsive-stylesheet-flutter-demo.vercel.app/)

![CleanShot 2022-07-25 at 21 56 52](https://user-images.githubusercontent.com/13791385/180899758-5f2b530f-a2c1-4842-9ce9-8f5b0ad15fea.gif)

```dart
body: Container(
  color: responsive.value({
    Breakpoints.xs: Colors.red.shade200,
    Breakpoints.sm: Colors.yellow.shade200,
    Breakpoints.md: Colors.green.shade200,
    Breakpoints.lg: Colors.blue.shade200,
    Breakpoints.xl: Colors.purple.shade200,
  }),
)
```
> [Learn more looking at the code example](https://github.com/skynexui/responsive_stylesheet/blob/main/examples/with_flutter_sample/lib/main.dart#L43)


## JavaScript/React ⚛

- [Check the examples to see the usage](https://github.com/skynexui/responsive_stylesheet/blob/main/examples/with_react_sample/pages/index.tsx#L9)

### How to install?

```sh
yarn add @skynexui/responsive_stylesheet
```

### Demo

- [Check it out](https://responsive-stylesheet-react-demo.vercel.app/)


# Docs

## What are the default values for the breakpoints?

- `xs: 0` From 0 screen width until 479
- `sm: 480` From 480 screen width until 767
- `md: 768` From 768 screen width until 991
- `lg: 992` From 992 screen width until 1199
- `xl: 1200` From 1200 and beyond

> All values from here came from other libraries and responsive Front End frameworks.

## Can I customize the breakpoints?

**Today, no**. But it's in the have a way to do this but the names `xs`...`xl` will remain part of the library to make easier to use the abstractions. 
