import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const StitchDesignApp());
}

class StitchDesignApp extends StatelessWidget {
  const StitchDesignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stitch Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF171122),
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      home: const VirtualTryOnLandingPage(),
    );
  }
}

// ---------------------------- LANDING PAGE ----------------------------
class VirtualTryOnLandingPage extends StatelessWidget {
  const VirtualTryOnLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 320,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://lh3.googleusercontent.com/aida-public/AB6AXuDwp9YKH-HI1qkod1n5LkJ4VataLuqXXgiAxaXCGvCecrijAMNpyuCNDzrv2gQAFzTKcnaK2NUsZDWIg_bNmE-IwDszFhNWgJhz6FlETlT0Ci8Cskjc378Zlu9-KumiIg7j-eyGXP_P72fIEJgXpOELzVUqsz0nA-Wi1df_keKWJsOkZ0_70Fr8J3KzcRTaRpJteiXePVc2eb4fEONEsypFVCmvNRqv_kYHGaLP9rD1cALA3gkNSjk_r3sVLcAHhOjxUzIM2EzJM34",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Try on jewelry virtually',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Experience the magic of augmented reality with our virtual try-on feature. See how different pieces look on you before you buy.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSans(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4A14B7),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 14,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Start exploring',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------- LOGIN SCREEN ----------------------------

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0xFF302447))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.radio_button_checked, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      'JewelAR',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF302447),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  ),
                  onPressed: () {},
                  child: const Text('Sign up'),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://lh3.googleusercontent.com/aida-public/AB6AXuAJBbgEzmMeiDoHJwG59w2AqQOEwpOYnUnq6YbUqOP71Qk7LTwyoSYH_hmUP1KwtakCnhFwitkH-wP16pJ-NeNRYb-19y7RMwrhTtKDJnpz-H22_9gBgM9z0RE63cN14pVjdtNTazmJk52SDMa3qZPX7yCxhpYuL-20oZsr1Pody8mbe1QJvof9V0m7BMusbXY_kXt_9zi1W_SbdVUKQ0xa3oUniTfnm1qG3FvMCc5MTAkzFb1QnaJipUDnsmRYtg3v0JPlOGI0YyU',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Welcome back',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 24),
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: _inputDecoration('Email', 'Enter your email'),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: _inputDecoration('Password', 'Enter your password'),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(color: Color(0xFFA593C8), decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4A14B7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const StitchDesignPage()),
                          );
                        },
                        child: const Text('Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(color: Color(0xFFA593C8), decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(String label, String hint) {
    return InputDecoration(
      filled: true,
      fillColor: const Color(0xFF302447),
      hintText: hint,
      hintStyle: const TextStyle(color: Color(0xFFA593C8)),
      labelText: label,
      labelStyle: const TextStyle(color: Colors.white),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.all(16),
    );
  }
}

// ---------------------------- STITCH DESIGN PAGE ----------------------------

class StitchDesignPage extends StatelessWidget {
  const StitchDesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: const Color(0xFF171122),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.crop_square, color: Colors.white, size: 18),
                      const SizedBox(width: 8),
                      Text('TryOn', style: textTheme.titleMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      _iconButton(Icons.favorite_border),
                      _iconButton(Icons.share),
                      _iconButton(Icons.camera_alt),
                      const SizedBox(width: 8),
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://lh3.googleusercontent.com/aida-public/AB6AXuAAEIYTc7zUdGFZmTzO91kG-A1DhlOOMK0SuGVYvcNqk2NeHHU32kJn3CE8TAN5APdsRg4BdcmKG0UOaEzFwrZkG5RmmstVEQXe-7fSCf1N9Qrmx2Mn9903WyzGIjLqZKt-pa-Foi3nzUGez3f60YiC5iAaPyWk025t7cEYcf_e938vnMh-W-INxaQhiYiq65_98cO_quKW7rXU1gmdUcJjX9ut4eWS672fDviFcm-LKUbKsNarszppMXJGsCRFebmXuHATaiXK_QE',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Video
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuAuYkxft5cpi2l24zvBUhq3m7cJw8HxCnF5mbZeS6dAZF6Ji8KgaApnfpxJo7LPL-EgfZ2gvVQXivUA3K7sa7pFlpmZHeJg3rqlxVNv7fm1byIHTkEBIo4m_qv6xUHitQ3L8ZTxNEhc3FOvoZTsJ9RJw-U62GJ2e_rI8xWJnXVM29q9gUZdY0cebqwK7NzI5jdJq8xryIv02mVxJUBv4lUKNb-nuSFC07AqFPR7rI2DT3n-e8LQThfv1F5Q9eOS9ZUnXkRDZ-r0Mkk'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.4),
                      radius: 32,
                      child: const Icon(Icons.play_arrow, size: 32, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            // Tabs
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _tab('Earrings', false),
                  _tab('Necklaces', true),
                  _tab('Bracelets', false),
                ],
              ),
            ),

            // Product List
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    _productCard('Elegant Pearl Necklace', 'https://lh3.googleusercontent.com/aida-public/AB6AXuCrFJlxK5vZNggu-goZLTHY-p0cUCPUxXkKFkjDx97tl6DIWzAQJN3rw32QPTBBoHaGVhadDL2LWi_qbHsB8bHT44a31n2gmQR_hDmDPMuBfhS5Mho6S71jigj3ZTm9eT7KAkKQKzoSWq2yRPz4w8eEC936DKm1o3p6djIlt7U3mj9vOpRAm6gKA_zWIMobG5RDFxUQIFMUq_dWq7sPViXjnrrLXmTi-sDhI11erDwgjlDJ2PAiTEsaS9AXO25w842K2Npda5GWhgs'),
                    _productCard('Diamond Pendant Necklace', 'https://lh3.googleusercontent.com/aida-public/AB6AXuDWhrjJnH2vrlC8v5MFVpprdJEnOy_94FevD2BsOxn-6s6YZwYTOeGOModAiHv1Les3RN4W5lGyiC5Pe11aeO5Fib8lNfkN8oqvJATPMt43pFnoV42zEZ19fKZUdF3Meoq580FMEfpblTyP3T6DuGH1ZJMROGPb0gvKn6F63AoU87na3aCjljciXvCTpd4Z2hsOpFwegVPgE119tx5CWxZhIjN7Sq8adhPuYy-ucbVRnVvwwf47Gri62u-zBzo6U6WMdufHPuKPZsA'),
                    _productCard('Gold Chain Necklace', 'https://lh3.googleusercontent.com/aida-public/AB6AXuBXNLdIbxvGy3-INLBZ4tZSpZPTkTTpa4asINMTg5uJz04vgvy-7xl7jsdWX_erRQoLw3IUXUC8-kScrqZf71FXBX--vne1yumX-vgTUZapkA0JKSPBU5TCbVGJqwN2xMoQO7B1gOuzd1yCFwpyZXTbsJnPLRgftSEaMXtV8krYME1VDcBd1ScoimU3BlmW8YCoknpRVyH8w7mKL87wHHJjs77DW997LJ_NIP7vjt7iZbIB_9ACFbftQmtIwe5jXOf4Wil3ieKwhiE'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tab(String label, bool selected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Text(label, style: TextStyle(color: selected ? Colors.white : const Color(0xFFA593C8), fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Container(height: 3, width: 24, color: selected ? const Color(0xFF4A14B7) : Colors.transparent),
        ],
      ),
    );
  }

  static Widget _iconButton(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: const Color(0xFF302447),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }

  static Widget _productCard(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
// ---------------------------- HOME PAGE (GEMGAZE) ----------------------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final categories = const [
    'Earrings',
    'Necklaces',
    'Bracelets',
    'Rings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF171122),
        elevation: 0,
        title: const Text(
          'GemGaze',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.favorite_border),
          SizedBox(width: 16),
          Icon(Icons.shopping_bag_outlined),
          SizedBox(width: 16),
          CircleAvatar(radius: 16, backgroundImage: NetworkImage('https://i.imgur.com/1AdTUzD.png')),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Explore Categories',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            for (var category in categories) ...[
              Text(
                category,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 160,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductDetailPage(
                          category: category,
                          productIndex: index,
                        ),
                      ),
                    ),
                    child: Container(
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1618354691264-4bceeba535de?auto=format&fit=crop&w=600&q=80',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        color: Colors.black54,
                        child: Text('$category $index'),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ]
          ],
        ),
      ),
    );
  }
}

// ---------------------------- PRODUCT DETAIL PAGE ----------------------------
class ProductDetailPage extends StatelessWidget {
  final String category;
  final int productIndex;

  const ProductDetailPage({super.key, required this.category, required this.productIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171122),
      appBar: AppBar(
        backgroundColor: const Color(0xFF171122),
        title: Text('$category $productIndex'),
      ),
      body: Center(
        child: Text(
          'Details for $category $productIndex',
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
