import 'dart:io';

void ganjil(int a) {
  print("ganjil");
  for (int i = 1; i <= (a / 2).ceil(); i++) {
    for (int j = 1; j <= (a / 2).ceil() - i; j++) {
      stdout.write("*");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write(i);
      if (j < i) {
        stdout.write(" ");
      }
    }
    for (int j = 1; j <= (a / 2).ceil() - i; j++) {
      stdout.write("*");
    }
    print(" ");
  }
  for (int i = 1; i <= (a / 2).floor(); i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    for (int j = 1; j <= (a / 2).ceil() - i; j++) {
      stdout.write((i + a / 2).ceil());
      if (j < (a / 2).ceil() - i) {
        stdout.write(" ");
      }
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print(" ");
  }
}

void genap(int b) {
  print("genap");
  int c = b, c_ = b, n = 1;
  for (int i = 0; i < b; i++) {
    for (int j = 1; j <= b; j++) {
      if (n == 10) {
        n = 1;
      }
      if (j >= (b + 1) - i && j <= b + i) {
        stdout.write(" ");
      } else {
        stdout.write(n);
      }
      n++;
    }
    for (int j = 1; j <= b; j++) {
      if (c == 0) {
        c = 9;
      }
      if (j <= i) {
        stdout.write(" ");
      } else {
        stdout.write(c);
      }
      c--;
    }
    print(" ");
    n = 1;
    c = c_;
  }
}

void main(List<String> arguments) {
  for (int i = 1; i <= 10; i++) {
    stdout.write("Masukkan angka : ");
    String? dtInput = stdin.readLineSync();
    int a = int.parse(dtInput!);
    if (a % 2 == 1) {
      ganjil(a);
    } else {
      genap(a);
    }
  }
}
