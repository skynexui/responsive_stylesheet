import parseStyleSheet from "./parse-stylesheet";

describe('parseStyleSheet()', () => {
  describe('when receive default stylesheet rules', () => {
    it('receiving only 1 stylesheet rule', () => {
      const input = {
        backgroundColor: 'red',
      };

      expect(parseStyleSheet(input)).toEqual({
        backgroundColor: 'red',
      });
    });
    it('receiving only 2 stylesheet rules', () => {
      const input = {
        backgroundColor: 'red',
        color: 'white',
      };

      expect(parseStyleSheet(input)).toEqual({
        backgroundColor: 'red',
        color: 'white',
      });
    });
  });
  describe('when receive responsive stylesheet rules', () => {
    it('receiving only 1 stylesheet rule with 1 breakpoint', () => {
      const input = {
        backgroundColor: {
          xs: 'red',
        },
      };

      expect(parseStyleSheet(input)).toMatchSnapshot();
    });
    it('receiving only 1 stylesheet rule with 2 breakpoints', () => {
      const input = {
        backgroundColor: {
          xs: 'red',
          md: 'black',
        },
      };
      expect(parseStyleSheet(input)).toMatchSnapshot();
    });
    it('receiving only a stylesheet rule vertical and horizontal with 2 breakpoints', () => {
      const input = {
        paddingVertical: {
          xs: '10px',
          md: '20px',
        },
        backgroundColor: {
          xs: 'red',
          lg: 'black',
        },
      };

      expect(parseStyleSheet(input)).toMatchSnapshot();
    });
  });
});
