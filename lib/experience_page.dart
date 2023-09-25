import 'package:flutter/material.dart';
import 'package:prt3/side_menu.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Wakil Ketua HMIF'),
            subtitle: Text(
                'Menjadi wakil ketua Himpunan Mahasiswa Informatika Unsoed periode 2023 Kabinet Gamadhikari'),
            leading: Icon(Icons.star), // You can change the icon as needed.
          ),
          ListTile(
            title: Text('KP Lustrum 3.0'),
            subtitle: Text(
                'Menjadi Ketua Pelaksana Lustrum 3.0 yang merupakan acara perayaan ulang tahun Informatika'),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text('Sekretaris Divisi Kreus'),
            subtitle: Text(
                'Menjadi Sekretaris divisi Kreasi dan Usaha HMIF Unsoed 2022'),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text('Bendahara Informatics Championship'),
            subtitle: Text(
                'Menjadi Bendahara dalam acara kejuaran olahraga dan seni di jurusan Informatika'),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text('Divisi Acara Diesnat Informatika ke 13 dan 14'),
            subtitle: Text(
                'Menjadi staff Divisi Acara di Diesnat yang merupakan acara perayaan ulang tahun Informatika'),
            leading: Icon(Icons.star),
          ),
        ],
      ),
      drawer: const SideMenu(),
    );
  }
}
