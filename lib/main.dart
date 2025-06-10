import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon Store',
      theme: ThemeData(),
      home: const ECommerceScreen(),
    );
  }
}

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amajon Store'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Banner Promo + Row Diskon
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Column(
                children: [
                  Text(
                    'PROMO SPESIAL HARI INI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 241, 143, 245),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_offer, color: Colors.red),
                      Text('Diskon 10%', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 10),
                      Text('Gratis Ongkir Seluruh Indonesia', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 10),
                      Icon(Icons.local_shipping, color: Color.fromARGB(255, 22, 69, 241)),
                      Text('Pengiriman Cepat'),
                    ],
                  ),
                ],
              ),
            ),

            // Produk 1
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(left: 16.0, top: 12.0, right: 12.0, bottom: 8.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 142, 213),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Sepatu Running',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text('4.5'),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 750.000',
                        style: TextStyle(color: Colors.blue, fontSize: 16.0),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Text(
                          'Beli',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Row(
                    children: [
                      Icon(Icons.local_shipping, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Text('Estimasi 2-3 hari'),
                    ],
                  ),
                ],
              ),
            ),

            // Produk 2 (background berbeda)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(left: 16.0, top: 12.0, right: 12.0, bottom: 8.0),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Tas Ransel',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text('4.8'),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 350.000',
                        style: TextStyle(color: Colors.blue, fontSize: 16.0),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Text(
                          'Beli',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Row(
                    children: [
                      Icon(Icons.local_shipping, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Text('Estimasi 1-2 hari'),
                    ],
                  ),
                ],
              ),
            ),

            // Kategori dengan Row-Column
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.shopping_bag, color: Colors.blue),
                          SizedBox(height: 4),
                          Text('Pakaian'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.watch, color: Colors.blue),
                          SizedBox(height: 4),
                          Text('Aksesoris'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.devices, color: Colors.blue),
                          SizedBox(height: 4),
                          Text('Elektronik'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.fastfood, color: Colors.blue),
                          SizedBox(height: 4),
                          Text('Makanan'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.book, color: Colors.blue),
                          SizedBox(height: 4),
                          Text('Buku'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.chair, color: Color.fromARGB(255, 203, 208, 54)),
                          SizedBox(height: 4),
                          Text('Kursi'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Footer Promo
            Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              padding: const EdgeInsets.all(24.0),
              child: const Text(
                'Buruan! Promo Menarik, Stok Terbatas!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 173, 32, 122),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}