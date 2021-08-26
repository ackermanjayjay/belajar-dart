import 'dart:core';
import 'dart:io';
class Coba
{
  //tanda tanya untuk input user
  String? nama;
  int? umur;

  //Jarak yang di inilisasi secara langsung
  int jarak=5,
  totSks=0,
  biaya=200000,
  totalBiaya=0;


  //List of integers
List<int> sks = List.filled(10, 0, growable: true); // [0]

  
  //List of String
List<String> matkul = List.filled(10, " ", growable: true); 


  void inputUser()
  {
    print("Masukkan nama");
    nama = stdin.readLineSync();
    print("Masukkan umur");
    umur = int.parse(stdin.readLineSync()!);
  }
  void inputMatkul()
  {
    print("\nMasukkan matakuliah dan sks anda ");
    for (int distance=1;distance<=jarak;distance++)
    {
     
    print("Masukkan matakuliah anda  $distance:");
    matkul[distance] = stdin.readLineSync()!;
    print("Masukkan Sks anda  $distance :");
     sks[distance]= int.parse(stdin.readLineSync()!);
    }
    
  }
  void ouputUser()
  {
       print("\n");
    print("Nama anda : $nama");
    print("Umur anda: $umur");
       print("\n");
      stdout.write("Mata kuliah dan Sks yang anda pilih : ");
     for(int v = 1;v<=jarak;v++)
  {
    stdout.write(" $v. Matkul anda : ");
    stdout.write(matkul[v]);
    print("\n");
     stdout.write(" Sks anda : ");
     stdout.write(sks[v]);
    print("\n");
  totSks+=sks[v];
  }
 
  }
  void outputPembayaran()
  {
    print("Hasil pembayaran anda selama satu semester: ");
    print("\nTotal Sks anda :$totSks");
    totalBiaya=biaya*totSks;
    stdout.write("Maka anda membayar sebesar : Rp$totalBiaya");
  }
}

void main()
{
  //Jangan lupa pake new nama Class anda
  Coba cetak = new Coba();
  cetak.inputUser();
  cetak.inputMatkul();
  cetak.ouputUser();
  cetak.outputPembayaran();
 
}