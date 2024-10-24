import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAKÜ App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('MAKÜZTYO'),
            Text(
              'Bucak Zeliha Tolunay Uygulamalı Teknoloji ve İşletmecilik Yüksekokulu',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('MAKÜZTYO'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('E-Posta'),
            ),
            ListTile(
              leading: Icon(Icons.alternate_email),
              title: Text('Öğrenci E-Posta'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('EBYS'),
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Öğrenci Bilgi Sistemi'),
            ),
            ListTile(
              leading: Icon(Icons.laptop),
              title: Text('Uzaktan Eğitim'),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Akademik Takvim'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Aday Öğrenciler'),
            ),
            ListTile(
              leading: Icon(Icons.restaurant_menu),
              title: Text('Yemek Listeleri'),
            ),
            ListTile(
              leading: Icon(Icons.food_bank),
              title: Text('Yemekhane Rezervasyon'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'DUYURULAR',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'assets/makü.png',
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.brightness_1, size: 10, color: Colors.green),
                    title: Text(
                      'ZELİHA TOLUNAY UYGULAMALI TEKNOLOJİ VE İŞLETMECİLİK YÜKSEKOKULUNDA MEZUNİYET COŞKUSU',
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.brightness_1, size: 10, color: Colors.green),
                    title: Text(
                      'Kayıt Dondurmak İsteyen Öğrenciler Hakkında Duyuru',
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.brightness_1, size: 10, color: Colors.green),
                    title: Text(
                      'İşletmede Mesleki Eğitim Dersi Ders Kaydı Hakkında',
                    ),
                  ),
                ],
              ),
            ),
            MAKUFooter(), // Footer eklendi
          ],
        ),
      ),
    );
  }
}

class MAKUFooter extends StatelessWidget {
  const MAKUFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLink('İşletmede Mesleki Eğitim Takvimi (Bahar Dönemi)'),
                    _buildLink('İşletmede Mesleki Eğitim Takvimi (Güz Dönemi)'),
                    _buildLink('Sigortalı İşe Giriş Bildirgesi'),
                    _buildLink('İşbaşında Eğitim Ödev-Proje Yazım Kılavuzu'),
                    _buildLink('Öğrenci Formları'),
                    _buildLink('Eşdeğerlilik Konulu Yazılar'),
                    _buildLink('Akademik Takvim'),
                    _buildLink('ERASMUS+'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLink('Canlı Derse Katılma, Ders Videolarını İzleme ve Doküman İndirme Adımlarını Anlatan Videomuz'),
                    _buildLink('AKTS Bilgi Paketi'),
                    _buildLink('Kablosuz İnternet (EDUROAM)'),
                    _buildLink('Öğrenci Yemekhane Rezervasyon İşlemleri'),
                    _buildLink('Mobil Uygulamalar'),
                    _buildLink('Öğrenciler Tarafından Sıkça Sorulan Sorular'),
                    _buildLink('Personel Tarafından Sıkça Sorulan Sorular'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Image.asset(
            'assets/ztyo-logo.png',
            height: 40,
            color: Colors.white54,
          ),
          const SizedBox(height: 16),
          Text(
            'Burdur Mehmet Akif Ersoy Üniversitesi',
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Bucak Zeliha Tolunay Uygulamalı Teknoloji ve İşletmecilik Yüksekokulu',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Oruç Mahallesi Atatürk Bulvarı No: 58 Adem Tolunay Yerleşkesi Bucak/BURDUR',
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                '+90 248 213 87 00',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
              Text(
                ' +90 248 213 87 01',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Text(
            '+90 248 213 87 10 (Faks)',
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12,
            ),
          ),
          Text(
            'ztyo@mehmetakif.edu.tr',
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLink(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        onTap: () {
          // Add navigation or URL launcher here
        },
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}