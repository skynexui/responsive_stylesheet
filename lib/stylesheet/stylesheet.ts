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
  // [box-model]  ============================================================
  height?: height;
  width?: width;
  color?: color;
  backgroundColor?: background;

  // [flexbox] ===============================================================
  /** https://developer.mozilla.org/en-US/docs/Web/CSS/flex */
  flex?: flex;
  /** https://developer.mozilla.org/pt-BR/docs/Web/CSS/align-items */
  alignItems?: alignItems;
  /** It is equivalent to alignItems */
  crossAxisAlignment?: alignItems;
  /** https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content */
  justifyContent?: justifyContent;
  /** It is equivalent to justifyContent */
  mainAxisAlignment?: justifyContent;
  flexDirection?: flexDirection;

  // Extras
  hover?: StyleSheet;
  focus?: StyleSheet;
  modeDark?: StyleSheet;
  [key: string]: ResponsiveProperty<string | any> | string | any;
}
