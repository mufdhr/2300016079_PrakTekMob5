import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon',
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
      // Tambahkan AppBar
      appBar: AppBar(
        title: const Text('Amajon Store'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
            padding: const EdgeInsets.all(12.0),
          ),
        ],
      ),
    
     

      // Tambahkan BottomNavigationBar
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

      // Tambahkan FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, 
        child: const Icon(Icons.shopping_cart),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Banner Promo
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                'PROMO SPESIAL HARI INI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            // Baris diskon dan gratis ongkir
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                color: Colors.grey[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.discount, color: Colors.red),
                        const SizedBox(width: 4.0),
                        Text('Diskon', style: TextStyle(color: Colors.grey[800])),
                      ],
                    ),
                    Text('Gratis Ongkir Seluruh Indonesia', 
                         style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w900)),
                    Row(
                      children: [
                        const Icon(Icons.local_shipping, color: Colors.blue),
                        const SizedBox(width: 4.0),
                        Text('Kirim Cepat', style: TextStyle(color: Colors.grey[800])),
                      ],
                    ),
                  ],
                ),
              ),
                  

            // Produk 1
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(left: 24.0, top: 16.0, right: 16.0, bottom: 12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                  // ignore: deprecated_member_use
                  color:  Colors.pink.withOpacity(0.3),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Sepatu Running',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 4),
                      Text('4.8 (220)'),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                 Row(
                   children: [
                      Icon(Icons.local_shipping, color: Colors.grey.shade700, size: 16),
                      const SizedBox(width: 4.0),
                      const Text('Estimasi tiba 2-3 hari'),
                   ],
                 ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 750.000',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Beli',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Produk 2
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
             padding: const EdgeInsets.only(left: 24.0, top: 16.0, right: 16.0, bottom: 12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                 BoxShadow(
                  color: Colors.green.shade50,
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Tas Ransel',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 4),
                      Text('4.4 (100)'),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                   children: [
                      Icon(Icons.local_shipping, color: Colors.grey.shade700, size: 16),
                      const SizedBox(width: 4.0),
                      const Text('Estimasi tiba 2-3 hari'),
                   ],
                 ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 350.000',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Beli',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            // Kategori
             Container(
              margin:  const EdgeInsets.all(16.0),
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children:  <Widget>[
                       Icon(Icons.shopping_bag, color: Colors.blue),
                       SizedBox(height: 8.0),
                       Text('Pakaian'),
                    ],
                  ),
                  Column(
                    children:  <Widget>[
                       Icon(Icons.watch, color: Colors.blue),
                       SizedBox(height: 8.0),
                       Text('Aksesoris')
                    ],
                  ),
                  Column(
                    children:  <Widget>[
                       Icon(Icons.devices, color: Colors.blue),
                       SizedBox(height: 8.0),
                       Text('Elektronik'),
                    ],
                  ),  
                ], 
              ),
            ),
            ],   
                ),
              ),
            ),
            );        
    }
  }
