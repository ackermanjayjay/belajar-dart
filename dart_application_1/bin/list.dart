import 'dart:io';

class iterasi
{
  List<int> listkosong=[];
  List<int> listada=[1,2,3];
  void inputList()
  {
     print("Pake perulangan");
    for(int kemana in listada)
    {
      print(kemana);
    }
  }
  void aksesTanpaIterasi()
  {
    print("Tanpa perulangan");
    int e = listada[0];
    print(e);
  }
  void ubah()
  {
    listada[0]=10;
 print("Menambah Tanpa perulangan");
    int e = listada[0];
    print(e);  
    }
    void iterasiManual()
    {
      print("Menambah perulangan dengan length list");
      for (int i =0;i<listada.length; i++)
      {

        print(listada[i]);
      }
    }
    void pakeForeach()
    {
      listada.forEach((manaya)
      {
        print(manaya);
      });
    }
}

main()
{
iterasi cetak =new iterasi();
cetak.inputList();
cetak.aksesTanpaIterasi();
cetak.ubah();
cetak.iterasiManual();
cetak.pakeForeach();
}