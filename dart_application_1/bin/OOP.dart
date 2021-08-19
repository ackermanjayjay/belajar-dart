// input user
import 'dart:io';

class Coba
{
  //tanda tanya untuk input user
  String? nama;
  int? umur;

  void inputUser()
  {
    print("Masukkan nama");
    nama = stdin.readLineSync();
    print("Masukkan umur");
    umur = int.parse(stdin.readLineSync()!);
  }
  void ouputUser()
  {
    print("Nama anda : $nama");
    print("Umur anda: $umur");
  }
}

void main()
{
  //Jangan lupa pake new nama Class anda
  Coba cetak = new Coba();
  cetak.inputUser();
  cetak.ouputUser();
}