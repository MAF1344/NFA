// kendaraan.dart
abstract class Kendaraan {
  String merk;
  int tahun;

  Kendaraan(this.merk, this.tahun);

  void info();
  void servis();
}
