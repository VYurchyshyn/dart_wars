// The rgb function is incomplete. Complete it so that passing in RGB decimal values
//will result in a hexadecimal representation being returned. Valid decimal values
//for RGB are 0 - 255. Any values that fall out of that range must be rounded to the
//closest valid value.

// Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

// The following are examples of expected output values:

// rgb(255, 255, 255) // returns FFFFFF
// rgb(255, 255, 300) // returns FFFFFF
// rgb(0, 0, 0)       // returns 000000
// rgb(148, 0, 211)   // returns 9400D3

// 16 = 1 * 10 + 6 * 1
// 253 = 2 * 10 * 10 + 5 * 10 + 3 * 1

// 16 = 1 * 16 + 6 * 1
// 253 = 2 * 16 * 16 + 5 * 16 + 3 * 1

// cafe

String rgb(int r, int g, int b) {
  r = (r > 0) ? r : 0;
  g = (g > 0) ? g : 0;
  b = (b > 0) ? b : 0;
  r = (r < 255) ? r : 255;
  g = (g < 255) ? g : 255;
  b = (b < 255) ? b : 255;

  return '${r.toRadixString(16).padLeft(2, '0')}${g.toRadixString(16).padLeft(2, '0')}${b.toRadixString(16).padLeft(2, '0')}'
      .toUpperCase();
}
// 0123456789ABCDEF
// 9(10) = 9(16)
// 15(10) = F(16)
// 16(10) = 10(16)
// 30(10) = 12(16)
// 31(10) = 1F(16)
// 32(10) = 20(16)
// 33(10) = 21(16)
// 253(10) = FD(16)

void main() {
  print(rgb(0, 0, 0));
  print(rgb(-1, 0, 0));
  print(rgb(144, 195, 212));
  print(rgb(212, 53, 12));
  print(rgb(300, 300, 300));
}
