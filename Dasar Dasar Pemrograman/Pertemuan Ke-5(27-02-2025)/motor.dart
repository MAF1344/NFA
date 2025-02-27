// motor.dart
import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool adaKeranjang;

  Motor(String merk, int tahun, this.adaKeranjang) : super(merk, tahun);

  @override
  void info() {
    print(
      "- Motor: $merk ($tahun) - ${adaKeranjang ? "Dengan Keranjang" : "Tanpa Keranjang"}",
    );
  }

  @override
  void servis() {
    print("Servis motor $merk dilakukan.");
  }
}
