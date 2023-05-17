import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menyembunyikan mark debug
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menjalankan fungsi untuk delay dan pindah ke halaman berikutnya
    navigateToNextScreen();
  }

  Future navigateToNextScreen() async {
    // Delay time selama 2 detik (2000 milidetik)
    await Future.delayed(Duration(milliseconds: 2000));
    // Pindah ke halaman berikutnya (misalnya HomeScreen)
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/w4.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'HISTELL',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}

// Homepage
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HISTELL'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Aksi yang dijalankan saat tombol menu ditekan
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add),
            onPressed: () {
              // Aksi yang dijalankan saat tombol tambah ditekan
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Aksi yang dijalankan saat tombol pengaturan ditekan
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Carilah Sejarah yang diinginkan...',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _searchController.clear();
                    });
                  },
                ),
              ),
              onChanged: (value) {
                // Aksi yang dijalankan saat nilai teks berubah
                // Anda dapat menambahkan logika pencarian di sini
                print('Search text changed: $value');
              },
            ),
          ),
          const SizedBox(height: 30),
          const Text('<=======Waktunya cari Inspirasi=======>'),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/w1.jpg',
                      width: 120,
                      height: 217,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Koresh yang Agung',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            """ Koresh II[b] (atau Koresy II; bahasa Persia Kuno: 𐎤𐎢𐎽𐎢𐏁 Kūruš;[6] bahasa Persia Modern: کورش Kūroš), dikenal dengan Koresh Agung, adalah Raja Diraja (Kaisar) Iran yang berkuasa sampai tahun 530 SM. Pandangan tradisional menyatakan bahwa dia adalah seorang anggota Dinasti Akhemeniyah, sehingga kekaisarannya disebut Kekaisaran Akhemeniyah.[7] Sebelum menjadi Raja Diraja Iran, Koresy adalah raja daerah Persia, sebuah kawasan di Iran selatan, sehingga negaranya juga disebut Kekaisaran Persia oleh bangsa non-Iran.""",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                            onPressed: () {
// Aksi yang dijalankan saat tombol "View Article" ditekan
                            },
                            child: Text('View Article'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset(
                      'assets/w2.jpg',
                      width: 120,
                      height: 217,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'George V',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            """George V (George Frederick Ernest Albert; 3 Juni 1865 – 20 Januari 1936) adalah Raja Britania Raya dan dominion-dominionnya, serta Maharaja India, yang berkuasa dari tanggal 6 Mei 1910 hingga kematiannya pada tahun 1936. George adalah putra kedua Raja Edward VII dan Ratu Alexandra. Pada awalnya, George tidak diharapkan untuk naik takhta karena ia memiliki kakak laki-laki bernama Pangeran Albert Victor. Namun, Pangeran Albert Victor meninggal pada usia 28 tahun karena penyakit pneumonia, sehingga George menjadi pewaris takhta. Ia menikahi Putri Mary dari Teck (yang tadinya bertunangan dengan Albert Victor) dan memiliki enam anak: Edward VIII, George VI, Putri Mary, Pangeran Henry, Pangeran George, dan Pangeran John. George V adalah kakek dari Ratu Elizabeth II.""",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                            onPressed: () {
// Aksi yang dijalankan saat tombol "View Article" ditekan
                            },
                            child: const Text('View Article'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
// Tambahkan gambar dan deskripsi lainnya di sini
              ],
            ),
          ),
        ],
      ),
    );
  }
}
