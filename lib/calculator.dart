import 'dart:io';

void main() {
  print("Kalkulator Test 0.1 ID Ver");

  while (true) {
    print('1.Penjumlahan');
    print('2.Pengurangan');
    print('3.Perkalian');
    print('4.Pembagian');
    print("5.keluar dari program ini");
    // Pilihan operasi yang ingin dilakukan

    stdout.write('Pilih operasi yang ingin dilakukan (1-5): ');
    String? choice = stdin.readLineSync(); //menimpan pilihan di variabel choices

    print(''); // membuat jarak agar terlihat lebih rapi

    if (choice == '5') {
      print('Terima kasih telah menggunakan kalkulator. Sampai jumpa!');
      break;
    }
    // hasil apabila user memilih untuk mengakhiri program

    stdout.write("Masukkan angka pertama disini: ");
    double? num1 = double.tryParse(stdin.readLineSync()!);
    stdout.write("Masukkan angka kedua disini: ");
    double? num2 = double.tryParse(stdin.readLineSync()!);

    if (num1 == null || num2 == null) {
      print("Angka tidak valid, silahkan coba lagi");
      continue;
    }
    // Hasil apabila angka tidak valid atau bukan angka

    double result;
    // membuat variabel result sebagai double

    switch (choice) {
      case '1':
        result = num1 + num2;
        print('Hasil: $num1 + $num2 = $result');
        break;
      case '2':
        result = num1 - num2;
        print('Hasil: $num1 - $num2 = $result');
        break;
      case '3':
        result = num1 * num2;
        print('Hasil: $num1 * $num2 = $result');
        break;
      case '4':
        if (num2 == 0) {
          print('Kamu tidak bisa membagi dengan nol!');
        } else {
          result = num1 / num2;
          print('Hasil: $num1 / $num2 = $result');
        }
        break;
      default:
        print('Pilihan yang anda berikan tidak valid, silahkan coba lagi');
        break;
    }
    print(''); // membuat jarak agar terlihat lebih rapi
  }
}
