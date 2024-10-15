import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // Section for Image and Text
              Center(
                child: Column(
                  children: [
                    const Text(
                      'Guiding You Every Step of the Way to Live Your Motorcycle Riding Dream',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Main image with overlay button
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('lib/assets/images/Rectangle 1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black.withOpacity(0.6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Image.asset('lib/assets/images/Group 3.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Grid of images and titles
              Container(
                width: double.infinity, // لجعل الصورة بعرض الشاشة
                height: 200,
                child: Stack(
                  children: [
                    // الصورة كخلفية
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('lib/assets/images/Group 1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // وضع النص في الجزء العلوي الأيسر
                    const Positioned(
                      top: 10, // المسافة من الأعلى
                      left: 10, // المسافة من اليسار
                      child: Text(
                        'RIDING \n COURSES',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20, // جعل النص أصغر
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity, // لجعل الصورة بعرض الشاشة
                height: 200,
                child: Stack(
                  children: [
                    // الصورة كخلفية
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('lib/assets/images/Frame 1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // وضع النص في الجزء العلوي الأيسر
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // تمكين التمرير الأفقي
                child: Row(
                  children: [
                    Container(
                      width: 300, // يمكنك تحديد العرض هنا بدلاً من `double.infinity`
                      height: 200,
                      child: Stack(
                        children: [
                          // الصورة كخلفية
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage('lib/assets/images/Frame 8482.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // وضع النص في الجزء العلوي الأيسر
                        ],
                      ),
                    ),
                    Container(
                      width: 300, // يمكنك تحديد العرض هنا
                      height: 200,
                      child: Stack(
                        children: [
                          // الصورة كخلفية
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage('lib/assets/images/Frame 8482.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // وضع النص في الجزء العلوي الأيسر
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: 400, // لجعل الصورة بعرض الشاشة
                height: 200,
                child: Stack(
                  children: [
                    // الصورة كخلفية
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('lib/assets/images/Group 10.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // وضع النص في الجزء العلوي الأيسر
                  ],
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
