// garasi.dart
import 'kendaraan.dart';

class Garasi {
  List<Kendaraan> kendaraanList = [];

  void tambahKendaraan(Kendaraan kendaraan) {
    kendaraanList.add(kendaraan);
  }

  void tampilkanKendaraan() {
    print("\nDaftar Kendaraan di Garasi:");
    for (var kendaraan in kendaraanList) {
      kendaraan.info();
    }
  }

  void servisSemuaKendaraan() {
    print("\nMelakukan servis untuk semua kendaraan...");
    for (var kendaraan in kendaraanList) {
      kendaraan.servis();
    }
  }
}
