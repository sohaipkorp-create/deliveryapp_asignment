import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar
      (
        title: Text('Home',style: TextStyle(color: Colors.black ,fontWeight:FontWeight.bold)),
      ),
      body: SingleChildScrollView(child:Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [ Text
         (
          'Servises',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
         ),
         SizedBox(height: 10,),
         GridView.count
         (
            crossAxisCount: 3,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: 
            [
               _buildServiceItem(Image.asset('assets/food.png'), "Food"),
                _buildServiceItem(Image.asset('assets/health.png'), "Health&Wellness"),
                _buildServiceItem(Image.asset('assets/groceries.png'), "Groceries"),
                
            ],
         )
        ]
      ),
    ));
  }
  











   Widget _buildServiceItem(Image IM, String title) {
    return Container(
      decoration: BoxDecoration(
        color:  Color.fromARGB(255, 209, 186, 219),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IM,
          const SizedBox(height: 5),
          Text(title, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
  Widget _buildOfferCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        "Special Offer - 50% OFF!",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  // 🔹 كارت مطعم
  Widget _buildRestaurantCard(String name, String type) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          const Icon(Icons.restaurant_menu, color: Colors.deepPurple, size: 40),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              Text(type, style: const TextStyle(color: Colors.grey)),
                ],
          )
        ],
      ),
    );
  }
}
