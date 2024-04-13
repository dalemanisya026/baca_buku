import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart'; // Assuming asset_image_widget.dart exists

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian header profil
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  // Foto profil (now circular)
                  ClipOval(
                    child: AssetImageWidget(
                      imagePath: 'assets/images/DalemAMP.jpeg', // Replace with your asset image path
                      width: 150, // Adjust size as needed
                      height: 150, // Equal proportions for circle
                    ),
                  ),
                  const SizedBox(width: 20.0),

                  // Nama dan bio
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Nama: Dalem Anisya',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Gemar membaca dan menulis.',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Bagian konten profil
            const Divider(),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              subtitle: const Text('dalemanisya8@gmail.com'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Nomor Telepon'),
              subtitle: const Text('085904361394'),
            ),

            // Tambahkan konten di bawah email dan nomor telepon
            const Divider(),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Alamat'),
              subtitle: const Text('Jl. Sudirman No.50'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.cake),
              title: const Text('Tanggal Lahir'),
              subtitle: const Text('08 Desember 2003'),
            ),
          ],
        ),
      ),
    );
  }
}
