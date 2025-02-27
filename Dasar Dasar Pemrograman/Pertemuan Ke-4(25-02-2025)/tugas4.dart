import 'dart:io';

void main() {
  // Menerima input jumlah pegawai
  stdout.write("Masukkan jumlah pegawai: ");
  int jumlahPegawai = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> pegawaiList = [];

  // Menggunakan perulangan untuk menginput data pegawai
  for (int i = 1; i <= jumlahPegawai; i++) {
    stdout.write("Masukkan nama pegawai ke-$i: ");
    String nama = stdin.readLineSync()!;
    stdout.write("Masukkan ID pegawai: ");
    int id = int.parse(stdin.readLineSync()!);
    stdout.write("Masukkan jabatan pegawai: ");
    String jabatan = stdin.readLineSync()!;
    stdout.write("Masukkan gaji pegawai: ");
    double gaji = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan tahun kerja pegawai: ");
    int tahunKerja = int.parse(stdin.readLineSync()!);

    pegawaiList.add({
      'ID': id,
      'Nama': nama,
      'Jabatan': jabatan,
      'Gaji': gaji,
      'Tahun Kerja': tahunKerja,
    });
  }

  // Menampilkan daftar pegawai dengan ID genap dan ganjil
  print("\nPegawai dengan ID Genap:");
  for (var pegawai in pegawaiList.where((p) => p['ID'] % 2 == 0)) {
    print("${pegawai['Nama']} (ID: ${pegawai['ID']})");
  }

  print("\nPegawai dengan ID Ganjil:");
  for (var pegawai in pegawaiList.where((p) => p['ID'] % 2 != 0)) {
    print("${pegawai['Nama']} (ID: ${pegawai['ID']})");
  }

  // Menampilkan data pegawai menggunakan for-in dan foreach
  print("\nDaftar Pegawai:");
  for (var pegawai in pegawaiList) {
    print(
      "Nama: ${pegawai['Nama']}, ID: ${pegawai['ID']}, Jabatan: ${pegawai['Jabatan']}, Gaji: ${pegawai['Gaji']}",
    );
  }

  // Menggunakan foreach
  pegawaiList.forEach((pegawai) {
    print("Pegawai: ${pegawai['Nama']} - ID: ${pegawai['ID']}");
  });

  // Fungsi untuk menghitung total gaji
  double hitungTotalGaji(List<Map<String, dynamic>> pegawai) {
    return pegawai.fold(0, (total, p) => total + p['Gaji']);
  }

  // Fungsi dengan default parameter untuk tunjangan
  double tunjanganPegawai(String jabatan, [double tunjangan = 500000]) {
    switch (jabatan.toLowerCase()) {
      case 'manager':
        return tunjangan * 2;
      case 'supervisor':
        return tunjangan * 1.5;
      case 'staff':
        return tunjangan;
      default:
        return tunjangan *
            0.8; 
    }
  }

  // Fungsi rekursif untuk menghitung bonus tahunan
  double hitungBonusTahunan(int tahun) {
    if (tahun == 0) return 0;
    return 1000000 + hitungBonusTahunan(tahun - 1);
  }

  // Arrow function untuk menghitung gaji bersih setelah pajak
  double gajiBersih(double gaji) => gaji * 0.9;

  print("\nTotal Gaji Pegawai: ${hitungTotalGaji(pegawaiList)}");
  for (var pegawai in pegawaiList) {
    print(
      "Tunjangan ${pegawai['Nama']}: ${tunjanganPegawai(pegawai['Jabatan'])}",
    );
    print(
      "Bonus Tahunan ${pegawai['Nama']}: ${hitungBonusTahunan(pegawai['Tahun Kerja'])}",
    );
    print("Gaji Bersih ${pegawai['Nama']}: ${gajiBersih(pegawai['Gaji'])}");
  }
}
