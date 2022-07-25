import { Breakpoints } from '@skynexui/responsive_stylesheet';

export type ResponsiveProperty<Type> = Partial<Record<Breakpoints, Type>>;

export default interface StyleSheet {
  backgroundColor?: ResponsiveProperty<string> | string;

  // Extras
  hover?: StyleSheet;
  focus?: StyleSheet;
  modeDark?: StyleSheet;
  [key: string]: ResponsiveProperty<string | any> | string | any;
}
