
import 'package:flutter/material.dart';
import 'home_page.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  const DetailPage({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBF5),
      body: CustomScrollView(
        slivers: [
          // FOTO MAKANAN
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: const Color(0xFFFFFBF5),
            leading: Padding(
              padding: const EdgeInsets.all(7),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: food.id,
                child: Image.network(
                  food.image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stack) {
                    return const ColoredBox(
                      color: Color(0xFFFFE6D7),
                      child: Center(
                        child: Icon(
                          Icons.restaurant,
                          size: 90,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

          // DETAIL MAKANAN
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // KATEGORI
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE6D7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      food.category,
                      style: const TextStyle(
                        color: Color(0xFFFF6B2C),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // NAMA MAKANAN
                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF30251F),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // RATING
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${food.rating} (${food.reviews} ulasan)',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // HARGA
                  Row(
                    children: [
                      Text(
                        formatRupiah(food.price),
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF6B2C),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        formatRupiah(food.originalPrice),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),
                  const Divider(),
                  const SizedBox(height: 15),

                  // DESKRIPSI
                  const Text(
                    'Deskripsi Makanan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    food.description,
                    style: const TextStyle(
                      height: 1.7,
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // INFORMASI
                  const Text(
                    'Informasi Makanan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      Expanded(
                        child: InfoBox(
                          icon: Icons.local_fire_department,
                          label: 'Kalori',
                          value: '${food.calories} kkal',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: InfoBox(
                          icon: Icons.access_time,
                          label: 'Waktu Masak',
                          value: '${food.preparationTime} menit',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Expanded(
                        child: InfoBox(
                          icon: Icons.restaurant,
                          label: 'Porsi',
                          value: food.portion,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: InfoBox(
                          icon: Icons.inventory_2,
                          label: 'Stok',
                          value: '${food.stock} tersedia',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // DETAIL PRODUK
                  const Text(
                    'Detail Produk',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  DetailRow(
                    title: 'Nama Makanan',
                    value: food.name,
                  ),
                  DetailRow(
                    title: 'Kategori',
                    value: food.category,
                  ),
                  DetailRow(
                    title: 'Tingkat Pedas',
                    value: food.spicyLevel,
                  ),
                  DetailRow(
                    title: 'Bahan Utama',
                    value: food.ingredients,
                  ),
                  DetailRow(
                    title: 'Informasi Alergen',
                    value: food.allergens,
                  ),
                  DetailRow(
                    title: 'Penjual',
                    value: food.seller,
                  ),
                  DetailRow(
                    title: 'Ketersediaan',
                    value: food.stock > 0
                        ? 'Tersedia'
                        : 'Habis',
                  ),

                  const SizedBox(height: 30),

                  // TOMBOL PESAN
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF7A30),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: food.stock > 0
                          ? () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(
                                SnackBar(
                                  content: Text(
                                    '${food.name} berhasil dipilih!',
                                  ),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            }
                          : null,
                      icon: const Icon(Icons.shopping_bag),
                      label: const Text(
                        'Pesan Sekarang',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ======================================
// WIDGET INFORMASI MAKANAN
// ======================================

class InfoBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoBox({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: const Color(0xFFFF7A30),
            size: 25,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 11,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

// ======================================
// WIDGET BARIS DETAIL
// ======================================

class DetailRow extends StatelessWidget {
  final String title;
  final String value;

  const DetailRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 115,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          const Text(':  '),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
