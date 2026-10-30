
import 'package:flutter/material.dart';
import 'detail_page.dart';

// ==================================================
// 1. MODEL DATA MAKANAN
// ==================================================

class Food {
  final String id;
  final String name;
  final String category;
  final String description;
  final String image;
  final int price;
  final int originalPrice;
  final double rating;
  final int reviews;
  final int calories;
  final int preparationTime;
  final int stock;
  final String portion;
  final String spicyLevel;
  final String ingredients;
  final String allergens;
  final String seller;
  final bool isPopular;

  const Food({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.image,
    required this.price,
    required this.originalPrice,
    required this.rating,
    required this.reviews,
    required this.calories,
    required this.preparationTime,
    required this.stock,
    required this.portion,
    required this.spicyLevel,
    required this.ingredients,
    required this.allergens,
    required this.seller,
    required this.isPopular,
  });
}

// ==================================================
// 2. DATA MENU RESTO RIPA CANTIK
// ==================================================

final List<Food> foodList = [
  Food(
    id: '1',
    name: 'Nasi Goreng Spesial',
    category: 'Makanan Berat',
    description:
        'Nasi goreng spesial dengan bumbu pilihan, telur, ayam suwir, sosis dan sayuran segar.',
    image:
        'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=900',
    price: 25000,
    originalPrice: 30000,
    rating: 4.9,
    reviews: 125,
    calories: 450,
    preparationTime: 15,
    stock: 20,
    portion: '1 Porsi',
    spicyLevel: 'Sedang',
    ingredients: 'Nasi, telur, ayam, sosis, kecap, bawang, sayuran',
    allergens: 'Telur, kedelai, gluten',
    seller: 'Resto Ripa Cantik',
    isPopular: true,
  ),

  Food(
    id: '2',
    name: 'Chicken Katsu',
    category: 'Makanan Berat',
    description:
        'Ayam fillet renyah dengan tepung roti dan saus spesial.',
    image:
        'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=900',
    price: 28000,
    originalPrice: 32000,
    rating: 4.8,
    reviews: 98,
    calories: 520,
    preparationTime: 20,
    stock: 15,
    portion: '1 Porsi',
    spicyLevel: 'Tidak Pedas',
    ingredients: 'Ayam, tepung roti, telur, saus, sayuran',
    allergens: 'Telur, gluten',
    seller: 'Resto Ripa Cantik',
    isPopular: true,
  ),

  Food(
    id: '3',
    name: 'Mie Goreng',
    category: 'Makanan Berat',
    description:
        'Mie goreng dengan telur, sayuran dan topping ayam.',
    image:
        'https://images.unsplash.com/photo-1585032226651-759b368d7246?w=900',
    price: 18000,
    originalPrice: 20000,
    rating: 4.7,
    reviews: 87,
    calories: 390,
    preparationTime: 12,
    stock: 25,
    portion: '1 Porsi',
    spicyLevel: 'Pedas',
    ingredients: 'Mie, telur, ayam, sawi, kecap',
    allergens: 'Telur, gluten, kedelai',
    seller: 'Resto Ripa Cantik',
    isPopular: false,
  ),

  Food(
    id: '4',
    name: 'Burger Beef',
    category: 'Fast Food',
    description:
        'Burger dengan daging sapi, keju, selada dan saus spesial.',
    image:
        'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=900',
    price: 32000,
    originalPrice: 35000,
    rating: 4.9,
    reviews: 156,
    calories: 610,
    preparationTime: 15,
    stock: 12,
    portion: '1 Buah',
    spicyLevel: 'Tidak Pedas',
    ingredients: 'Roti, daging sapi, keju, selada, tomat',
    allergens: 'Susu, gluten, telur',
    seller: 'Resto Ripa Cantik',
    isPopular: true,
  ),

  Food(
    id: '5',
    name: 'Pizza Cheese',
    category: 'Fast Food',
    description:
        'Pizza dengan keju melimpah dan saus tomat pilihan.',
    image:
        'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=900',
    price: 45000,
    originalPrice: 50000,
    rating: 4.8,
    reviews: 112,
    calories: 700,
    preparationTime: 25,
    stock: 10,
    portion: 'Personal',
    spicyLevel: 'Tidak Pedas',
    ingredients: 'Adonan roti, keju, saus tomat, oregano',
    allergens: 'Susu, gluten',
    seller: 'Resto Ripa Cantik',
    isPopular: false,
  ),

  Food(
    id: '6',
    name: 'Es Kopi Susu',
    category: 'Minuman',
    description:
        'Kopi pilihan dengan susu segar dan gula aren.',
    image:
        'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=900',
    price: 18000,
    originalPrice: 22000,
    rating: 4.9,
    reviews: 203,
    calories: 180,
    preparationTime: 5,
    stock: 30,
    portion: '250 ml',
    spicyLevel: 'Tidak Pedas',
    ingredients: 'Espresso, susu, gula aren, es batu',
    allergens: 'Susu',
    seller: 'Resto Ripa Cantik',
    isPopular: true,
  ),

  Food(
    id: '7',
    name: 'Jus Strawberry',
    category: 'Minuman',
    description:
        'Jus strawberry segar dengan rasa manis dan sedikit asam.',
    image:
        'https://images.unsplash.com/photo-1553530666-ba11a7da3888?w=900',
    price: 15000,
    originalPrice: 18000,
    rating: 4.7,
    reviews: 65,
    calories: 120,
    preparationTime: 5,
    stock: 18,
    portion: '300 ml',
    spicyLevel: 'Tidak Pedas',
    ingredients: 'Strawberry, gula, susu, es batu',
    allergens: 'Susu',
    seller: 'Resto Ripa Cantik',
    isPopular: false,
  ),

  Food(
    id: '8',
    name: 'Pancake Cokelat',
    category: 'Dessert',
    description:
        'Pancake lembut dengan saus cokelat premium.',
    image:
        'https://images.unsplash.com/photo-1528207776546-365bb710ee93?w=900',
    price: 22000,
    originalPrice: 25000,
    rating: 4.8,
    reviews: 76,
    calories: 350,
    preparationTime: 10,
    stock: 14,
    portion: '2 Buah',
    spicyLevel: 'Tidak Pedas',
    ingredients: 'Tepung, telur, susu, cokelat, gula',
    allergens: 'Susu, telur, gluten',
    seller: 'Resto Ripa Cantik',
    isPopular: false,
  ),
];

// ==================================================
// 3. FORMAT HARGA RUPIAH
// ==================================================

String formatRupiah(int value) {
  return 'Rp ${value.toString().replaceAllMapped(
    RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
    (match) => '${match[1]}.',
  )}';
}

// ==================================================
// 4. HALAMAN HOME
// ==================================================

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'Semua';
  String searchQuery = '';

  final List<String> categories = [
    'Semua',
    'Makanan Berat',
    'Fast Food',
    'Minuman',
    'Dessert',
  ];

  // FILTER MENU
  List<Food> get filteredFoods {
    return foodList.where((food) {
      final categoryMatch =
          selectedCategory == 'Semua' ||
          food.category == selectedCategory;

      final searchMatch =
          food.name.toLowerCase().contains(
                searchQuery.toLowerCase(),
              );

      return categoryMatch && searchMatch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // RESPONSIVE GRID
    final int crossAxisCount = screenWidth < 600
        ? 2
        : screenWidth < 1000
            ? 3
            : 4;

    return Scaffold(
      backgroundColor: const Color(0xFFF5FAFF),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [

            // =====================================
            // HEADER
            // =====================================

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  20, 22, 20, 10,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat Datang di',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF7892AC),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Resto Ripa Cantik',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF17324F),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Fresh Food, Happy Mood!',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF7892AC),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDCEEFF),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: const Icon(
                        Icons.restaurant_menu,
                        color: Color(0xFF2563A6),
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // =====================================
            // BANNER
            // =====================================

            SliverToBoxAdapter(
              child: Container(
                height: 155,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF77B5E8),
                      Color(0xFF2563A6),
                      Color(0xFF174E86),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(23),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF2563A6)
                          .withOpacity(0.15),
                      blurRadius: 15,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Text(
                            'RESTO RIPA CANTIK',
                            style: TextStyle(
                              color: Color(0xFFDCEEFF),
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text(
                            'Lezatnya bikin\njatuh cinta! 💙',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              height: 1.25,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Fresh Food, Happy Mood!',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.fastfood_rounded,
                      size: 75,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),

            // =====================================
            // SEARCH
            // =====================================

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Cari makanan favorit...',
                    hintStyle: const TextStyle(
                      color: Color(0xFF9AAEC1),
                      fontSize: 13,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF2563A6),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xFFE1EDF8),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xFF2563A6),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // =====================================
            // JUDUL KATEGORI
            // =====================================

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  20, 25, 20, 12,
                ),
                child: const Text(
                  'Kategori Makanan',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF17324F),
                  ),
                ),
              ),
            ),

            // =====================================
            // KATEGORI
            // =====================================

            SliverToBoxAdapter(
              child: SizedBox(
                height: 43,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];

                    final selected =
                        selectedCategory == category;

                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 9,
                      ),
                      child: ChoiceChip(
                        label: Text(category),
                        selected: selected,
                        showCheckmark: false,
                        selectedColor:
                            const Color(0xFF2563A6),
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          color: selected
                              ? const Color(0xFF2563A6)
                              : const Color(0xFFDCE8F4),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(13),
                        ),
                        labelStyle: TextStyle(
                          color: selected
                              ? Colors.white
                              : const Color(0xFF49647D),
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                        ),
                        onSelected: (_) {
                          setState(() {
                            selectedCategory = category;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ),

            // =====================================
            // JUDUL MENU
            // =====================================

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  20, 25, 20, 14,
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Menu Pilihan',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF17324F),
                      ),
                    ),
                    Text(
                      '${filteredFoods.length} menu',
                      style: const TextStyle(
                        color: Color(0xFF7892AC),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // =====================================
            // GRID MAKANAN
            // =====================================

            filteredFoods.isEmpty
                ? const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Center(
                        child: Text(
                          'Makanan tidak ditemukan',
                          style: TextStyle(
                            color: Color(0xFF7892AC),
                          ),
                        ),
                      ),
                    ),
                  )
                : SliverPadding(
                    padding: const EdgeInsets.fromLTRB(
                      20, 0, 20, 30,
                    ),
                    sliver: SliverGrid(
                      delegate:
                          SliverChildBuilderDelegate(
                        (context, index) {
                          final food =
                              filteredFoods[index];

                          return FoodCard(
                            food: food,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(food: food),
                                ),
                              );
                            },
                          );
                        },
                        childCount: filteredFoods.length,
                      ),
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        mainAxisSpacing: 14,
                        crossAxisSpacing: 12,
                        childAspectRatio:
                            screenWidth < 600
                                ? 0.78
                                : screenWidth < 1000
                                    ? 0.85
                                    : 0.90,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

// ==================================================
// 5. WIDGET KARTU MAKANAN RESPONSIF
// ==================================================

class FoodCard extends StatelessWidget {
  final Food food;
  final VoidCallback onTap;

  const FoodCard({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final bool isSmallScreen = width < 380;

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFE1EDF8),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [

              // FOTO MAKANAN

              Expanded(
                flex: 5,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Hero(
                      tag: food.id,
                      child: Image.network(
                        food.image,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stack) {
                          return Container(
                            color: const Color(0xFFDCEEFF),
                            child: const Icon(
                              Icons.restaurant,
                              size: 40,
                              color: Color(0xFF2563A6),
                            ),
                          );
                        },
                      ),
                    ),

                    if (food.isPopular)
                      Positioned(
                        top: 7,
                        left: 7,
                        child: Container(
                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2563A6),
                            borderRadius:
                                BorderRadius.circular(7),
                          ),
                          child: const Text(
                            'POPULER',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              // INFORMASI MAKANAN

              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isSmallScreen ? 7 : 9,
                    vertical: 7,
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [

                      // KATEGORI DAN NAMA

                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.category,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: const Color(0xFF7892AC),
                              fontSize:
                                  isSmallScreen ? 9 : 10,
                            ),
                          ),

                          const SizedBox(height: 3),

                          Text(
                            food.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: const Color(0xFF17324F),
                              fontSize:
                                  isSmallScreen ? 11 : 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // RATING DAN WAKTU

                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Color(0xFFFFB547),
                            size: 15,
                          ),

                          const SizedBox(width: 3),

                          Text(
                            '${food.rating}',
                            style: TextStyle(
                              fontSize:
                                  isSmallScreen ? 10 : 11,
                              color: const Color(0xFF49647D),
                            ),
                          ),

                          const Spacer(),

                          Flexible(
                            child: Text(
                              '${food.preparationTime} menit',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize:
                                    isSmallScreen ? 9 : 10,
                                color: const Color(0xFF7892AC),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // HARGA

                      Text(
                        formatRupiah(food.price),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: const Color(0xFF2563A6),
                          fontSize:
                              isSmallScreen ? 12 : 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
