import 'package:flutter/material.dart';
import '/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _textboxNama(),
              const SizedBox(height: 10),
              _textboxNIM(),
              const SizedBox(height: 10),
              _textboxTahun(),
              const SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _textboxNama() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Nama tidak boleh kosong';
        }
        return null;
      },
    );
  }

  _textboxNIM() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nimController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'NIM tidak boleh kosong';
        }
        return null;
      },
    );
  }

  _textboxTahun() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _tahunController,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Tahun Lahir tidak boleh kosong';
        }
        if (int.tryParse(value) == null) {
          return 'Tahun Lahir harus berupa angka';
        }
        return null;
      },
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, tahun: tahun)));
        }
      },
      child: const Text(
        'Simpan',
        style: TextStyle(
          fontWeight: FontWeight.bold, // text bold
        ),
      ),
    );
  }
}
