import 'dart:core';
import 'dart:convert';
import 'dart:io';
class Coba
{
  //tanda tanya untuk input user
  String? nama;
  int? umur;
  int jarak=5;
  //List of integers
  final sks = <int>[];
  //List of String
  final matkul = <String>[];
 

  void inputUser()
  {
    print("Masukkan nama");
    nama = stdin.readLineSync();
    print("Masukkan umur");
    umur = int.parse(stdin.readLineSync()!);
  }
  void inputMatkul()
  {
    print("Masukkan matakuliah dan sks anda ");
    for (var distance=1;distance<=jarak;distance++)
    {
    print("Masukkan matakuliah anda  $distance :");
    final matkul = stdin.readLineSync();
    print("Masukkan Sks anda  $distance :");
    final sks= int.parse(stdin.readLineSync()!);
    }
    for (var hasil=1;hasil<=jarak;hasil++)
    {
   print("Mata kuliah  : $matkul $hasil ") ;
   print("Sks anda : $sks $hasil");
    }
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
  cetak.inputMatkul();
  cetak.ouputUser();
 
}