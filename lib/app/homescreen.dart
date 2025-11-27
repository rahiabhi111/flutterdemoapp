import 'package:demo_project_avinash/app/common/travelCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor:  Color(0xFF18192B),
      // appBar: AppBar(
      //   title: const Text("Home Screen"),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60 ,left: 16,right: 16,bottom: 16 ),
        child: Column(
          children: [
      
            Row(
              children: [
                // Left icon or image
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(0, 34, 40, 62),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const 
                  
                  ImageIcon(
  AssetImage("assets/images/icon.png"),
  size: 16,
  color: Color.fromARGB(255, 23, 187, 228),
),
                  
               //   Icon(Icons.menu, color: Color.fromARGB(255, 246, 245, 247)),
                ),

                const SizedBox(width: 12),

                // Search Bar
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                       gradient: LinearGradient(
        colors: [
           Color(0xFF22283E),
      Color.fromARGB(149, 33, 38, 59),
  Color.fromARGB(151, 31, 35, 55),
    Color.fromARGB(119, 29, 32, 51),
        Color.fromARGB(180, 26, 29, 46),
      Color(0xFF171827)
          // end color
        ],
                       ),
                  //  color: Color.fromARGB(255, 16, 17, 28),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "        Where to?",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(height: 20),

  //Here i implemented the ListView
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return travelCards();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
