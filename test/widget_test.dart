  void main(){
    var pakaian1= pakaian("Baju", "Biru");
    print("Jenis pakaian: ${pakaian1.jenis} dengan warna ${pakaian1.warna} ");

    var pakaian2 = pakaian("Jaket", "Hitam");
    print("Jenis pakaian: ${pakaian2.jenis} dengan warna ${pakaian2.warna} ");
}
  class pakaian {
    String? jenis;
    String? warna;

    pakaian(String jenisNya, String warnaNya){
      jenis = jenisNya;
      warna = warnaNya;
    }
  }
