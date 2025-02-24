void main() {
  // List untuk menyimpan daftar mahasiswa
  List<String> mahasiswa = ["Andi", "Budi", "Citra", "Dewi", "Eko"];

  // Set untuk menyimpan mata kuliah unik
  Set<String> mataKuliahUnik = {
    "Matematika",
    "Fisika",
    "Pemrograman",
    "Statistika",
    "AI",
  };

  // Map untuk menyimpan data mahasiswa
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    "Andi": {
      "NIM": "22001",
      "Mata Kuliah": ["Matematika", "Fisika"],
    },
    "Budi": {
      "NIM": "22002",
      "Mata Kuliah": ["Pemrograman", "AI"],
    },
    "Citra": {
      "NIM": "22003",
      "Mata Kuliah": ["Statistika", "Matematika"],
    },
    "Dewi": {
      "NIM": "22004",
      "Mata Kuliah": ["AI", "Fisika"],
    },
    "Eko": {
      "NIM": "22005",
      "Mata Kuliah": ["Pemrograman", "Statistika"],
    },
  };

  // Menambahkan mahasiswa baru
  String mahasiswaBaru = "Fahmi";
  mahasiswa.add(mahasiswaBaru);
  dataMahasiswa[mahasiswaBaru] = {
    "NIM": "22006",
    "Mata Kuliah": ["Matematika", "AI"],
  };

  // Menghapus satu mahasiswa
  String mahasiswaHapus = "Citra";
  mahasiswa.remove(mahasiswaHapus);
  dataMahasiswa.remove(mahasiswaHapus);

  // Menampilkan daftar mahasiswa setelah perubahan
  print("Daftar Mahasiswa:");
  for (var nama in dataMahasiswa.keys) {
    print("Nama: $nama");
    print("NIM: ${dataMahasiswa[nama]!['NIM']}");
    List<String> mataKuliah = List<String>.from(
      dataMahasiswa[nama]!['Mata Kuliah'],
    );
    String mataKuliahStr = mataKuliah.join(", ");
    print("Mata Kuliah: $mataKuliahStr");
    print("---------------------------");
  }
}
