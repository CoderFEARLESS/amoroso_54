import 'package:facebook_amoroso/friends.dart';
import 'package:facebook_amoroso/marketplace.dart';
import 'package:facebook_amoroso/newsfeed.dart';
import 'package:facebook_amoroso/notification.dart';
import 'package:facebook_amoroso/profile.dart';
import 'package:facebook_amoroso/reels.dart';
import 'package:flutter/material.dart';

class MainCustomePage extends StatefulWidget {
  const MainCustomePage({super.key});

  @override
  State<MainCustomePage> createState() => _MainCustomePageState();
}

class _MainCustomePageState extends State<MainCustomePage> {
  int currentPage = 0;

  List pages = [
    const Newsfeed(),
    const ReelsPage(),
    const FriendsPage(),
    const MarketplacePage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  void onTap(int index){
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Friends"),
          BottomNavigationBarItem(icon: Icon(Icons.local_convenience_store), label: "Marketplace"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage("assets/profile/prof3.jpg"),), label: "Profile"),
        ]
      ),
    );
  }
}