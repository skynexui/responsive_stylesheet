import Box from "@src/components/Box/Box";
import GlobalStyle from "@src/theme/GlobalStyle";

export default function HomeScreen() {
  return (
    <>
      <GlobalStyle />
      <Box
        styleSheet={{
          flex: 1,
          alignItems: "center",
          justifyContent: "center",
          fontFamily: "sans-serif",
          color: "white",
          backgroundColor: {
            xs: "#ff9090",
            sm: "#ffd586",
            md: "#aaffaa",
            lg: "#7d7dff",
            xl: "#f33cb3",
          },
        }}
      >
        HomeScreen
      </Box>
    </>
  );
}
