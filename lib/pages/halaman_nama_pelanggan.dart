import 'package:flutter/material.dart';
import '../helpers/pengaturan_helper.dart';

class HalamanNamaPelanggan extends StatelessWidget {
  const HalamanNamaPelanggan({super.key});

  @override
  Widget build(BuildContext context) {
    final nama = PengaturanHelper.muatNama();
    final adaNama = nama.isNotEmpty;

    return Scaffold(
      appBar: AppBar(title: const Text('Nama Pelanggan')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 48,
                child: Text(
                  adaNama ? nama[0].toUpperCase() : '?',
                  style: const TextStyle(fontSize: 40),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                adaNama ? 'Halo, $nama!' : 'Nama pelanggan belum disimpan',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                adaNama
                    ? 'Selamat datang di Kantin Kampus'
                    : 'Isi nama di halaman Pengaturan lalu tekan "Simpan nama"',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
