import Box from "@src/components/Box/Box";
import GlobalStyle from "@src/theme/GlobalStyle";

export default function HomeScreen() {
  return (
    <>
      <GlobalStyle />
      <Box
        styleSheet={{
          flex: 1,
          alignItems: 'center',
          justifyContent: 'center',
          fontFamily: 'sans-serif',
          color: 'white',
          backgroundColor: {
            xs: 'red',
            sm: 'orange',
            md: 'green',
            lg: 'blue',
            xl: 'purple',
          }
        }}
      >
        HomeScreen
      </Box>
    </>
  );
}
