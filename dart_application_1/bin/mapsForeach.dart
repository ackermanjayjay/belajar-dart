import 'dart:core';
import 'dart:io';

class Maps
{ 
  
    var detail = new Map();

  void cekMap()
  {
   
    print("Ini map ges");
     // jika ingin input user tambahkan key 
     // sama seperti jika ingin memasukkan input user 
     // dengan stdin.readLineSync();
detail['Nama']= stdin.readLineSync();
detail['umur'] = stdin.readLineSync();
  }
  void outputMap()
  {
   detail.forEach((k,v )=>print('${k}: ${v}'));
  }
}


main()
{
  Maps cetak = new Maps();  
  cetak.cekMap();
  cetak.outputMap();
}