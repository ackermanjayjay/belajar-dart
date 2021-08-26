import 'dart:core';
import 'dart:io';
class Coba
{
  //tanda tanya untuk input user
   
  String? nama;
  int? umur;
  int jarak=5;
  //List of integers
List<int> sks = List.filled(9, 0, growable: false); // [0]
  //List<int> sks = [0];
  //List of String
List<String> matkul = List.filled(9, " ", growable: false); 


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
    for (int distance=0;distance<jarak;distance++)
    {
    print("Masukkan matakuliah anda  $distance :");
    matkul[distance] = stdin.readLineSync()!;
    print("Masukkan Sks anda  $distance :");
     sks[distance]= int.parse(stdin.readLineSync()!);
    }
  for(int v = 0;v<jarak;v++)
  {
    stdout.write(" $v. Matkul anda : $matkul");
     stdout.write(" Sks anda : $sks");
   
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