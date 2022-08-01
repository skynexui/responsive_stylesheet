import { ResponsiveProperty } from "../responsive-property";

export type flexDirection = ResponsiveProperty<"row" | "column"> | string;

export type flex = ResponsiveProperty<number | string> | string | number;

export type alignItems =
  | ResponsiveProperty<"stretch" | "flex-start" | "flex-end" | "center">
  | string;

export type justifyContent =
  | ResponsiveProperty<
      | "center"
      | "flex-start"
      | "flex-end"
      | "spaceBetween"
      | "spaceAround"
      | "spaceEvenly"
    >
  | string;
