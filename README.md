# Tugas Pertemuan 2

Fork dan clone repository ini, lalu jalankan perintah

```
flutter pub get
```

Buatlah tampilan form yang berisi nama, nim, dan tahun lahir pada file `ui/form_data.dart`, lalu buatlah tampilan hasil dari input data tersebut pada file `ui/tampil_data.dart`

JELASKAN PROSES PASSING DATA DARI FORM MENUJU TAMPILAN DENGAN FILE `README.md`

Buat tampilan semenarik mungkin untuk dilihat.

Nama : Niken Ayu Wijaya

NIM : H1D021018

Shift Baru: F

## Screenshot

[Screenshot hasil](https://drive.google.com/drive/folders/1XuyM-NwqrclsRT04qmpEWMLPP3_iojl-?usp=drive_link)

## Proses passing data menuju tampilan

1. Pengisian data di form. Di dalam kelas form_data.dart, terdapat tiga TextFormField yang digunakan untuk mengumpulkan input pengguna: Nama, NIM, Tahun Lahir
2. Validasi form. Saat tombol "Simpan" ditekan, metode \_tombolSimpan akan memeriksa apakah form valid dengan if (\_formKey.currentState!.validate()). Jika form valid, data yang diinputkan akan diambil dari controller masing-masing.
3. Mengambil data. Data diambil dengan mengakses properti text dari masing-masing controller.
4. Navigasi ke halaman tampil_data.dart. Setelah data berhasil diambil dan valid, aplikasi melakukan navigasi ke halaman tampil_data.dart dengan menggunakan Navigator.of(context).push().
5. Penerimaan data di tampil_data.dart. Di kelas tampil_data.dart, konstruktor menerima tiga parameter nama, nim, dan tahun. Dalam metode build, umur dihitung dengan mengurangkan tahun saat ini dengan tahun yang diinputkan.
6. Menampilkan data. Data yang diteruskan kemudian ditampilkan dalam widget Text pada body halaman tampil_data.dart dengan :
   Text("Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun")
