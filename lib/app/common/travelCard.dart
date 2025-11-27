import 'package:flutter/material.dart';



Widget travelCards() {
  return Container(
    margin: const EdgeInsets.only(bottom: 16),
    height: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: const DecorationImage(
        image: AssetImage("assets/images/cover_image2.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [

//this position is for rating 
Positioned(
  top: 4,
  left: 0,
  right: 0,
  child: Center(   // <-- This makes the box centered & small
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(0, 83, 120, 255),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
          bottomLeft: Radius.circular(6),
          bottomRight: Radius.circular(6),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.transparent,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,   // <-- keeps row small
        children: [
          Icon(Icons.star, color: Color(0xFF19E5FF), size: 18),
          SizedBox(width: 6),
          Text(
            "4.1 (1,648)",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    ),
  ),
),

      //this position is for 
        Positioned(
          top: 12,
          right: 12,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.favorite_border, color: Colors.white, size: 24),
          ),
        ),


   //this position is for bottom container
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(16),
        
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20) ,top: Radius.circular(20)),
              // color: Colors.black.withOpacity(0.8),
              gradient: LinearGradient(
    colors: [
      Colors.black.withOpacity(0.4),
      Colors.black.withOpacity(0.9),
        Colors.black,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
          
              children: [
                const Text(
                  "Toronto, Canada",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("COST", style: TextStyle(color: Colors.white70, fontSize: 12)),
                        SizedBox(height: 4),
                        Text("\$200 CAD / night",
                            style: TextStyle(color: Colors.white, fontSize: 14)),
                      ],
                    ),

                    // here i set the distance
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("DISTANCE", style: TextStyle(color: Colors.white70, fontSize: 12)),
                        SizedBox(height: 4),
                        Row(
                          children: [
   ImageIcon(
  AssetImage("assets/images/location.png"),
  size: 16,
  color: Color.fromARGB(255, 23, 187, 228),
),
    // ),
                          
                            SizedBox(width: 4),
                            Text("257 km", style: TextStyle(color: Colors.white, fontSize: 14)),
                          ],
                        ),
                      ],
                    ),

                  

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("AVAILABLE", style: TextStyle(color: Colors.white70, fontSize: 12)),
                        SizedBox(height: 4),
                        Row(
                          children: [
                             ImageIcon(
  AssetImage("assets/images/calender.png"),
  size: 16,
  color: Color.fromARGB(255, 23, 187, 228),
),
                            SizedBox(width: 4),
                            Text("Oct 24 - 26", style: TextStyle(color: Colors.white, fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
