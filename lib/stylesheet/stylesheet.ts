import { background, color, height, width } from "./properties/box-model";
import {
  alignItems,
  flex,
  flexDirection,
  justifyContent,
} from "./properties/flexbox";
import { ResponsiveProperty } from "./responsive-property";

export { ResponsiveProperty } from "./responsive-property";

export interface StyleSheet {
  // [box-model]
  height?: height;
  width?: width;
  color?: color;
  backgroundColor?: background;

  // [flexbox]
  flex?: flex;
  alignItems?: alignItems;
  crossAxisAlignment?: alignItems;
  justifyContent?: justifyContent;
  mainAxisAlignment?: justifyContent;
  flexDirection?: flexDirection;

  // Extras
  hover?: StyleSheet;
  focus?: StyleSheet;
  modeDark?: StyleSheet;
  [key: string]: ResponsiveProperty<string | any> | string | any;
}
