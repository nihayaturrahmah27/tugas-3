import 'package:flutter/material.dart';
import 'package:prt3/side_menu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: const Center(
        child: Card(
          elevation: 4.0,
          margin: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(
                  'Biodata Diri',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Halo, saya Nihayatur Rahmah Mahasiswi Informatika Unsoed angkatan 2021. Saya memiliki ketertarikdan dalam bidang copywriting mungkin karena hobi saya adalah membaca dan menonton film terutama drama korea. Saya juga memiliki ketertarikan dalan dunia Kpop sejak lama, banyak draa, musik, film dan berita Kpop yang saya ikuti. Mungkin itu perkenalan singkat saya, terima kasih!',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
