import 'package:flutter/material.dart';
import 'package:flutter_isolates/provider/chat_provider.dart';
import 'package:flutter_isolates/screens/chat_history_screen.dart';
import 'package:flutter_isolates/screens/chat_screen.dart';
import 'package:flutter_isolates/screens/profile_screen.dart';
import 'package:provider/provider.dart';

class GeminiHomeScreen extends StatefulWidget {
  const GeminiHomeScreen({super.key});

  @override
  State<GeminiHomeScreen> createState() => _GeminiHomeScreenState();
}

class _GeminiHomeScreenState extends State<GeminiHomeScreen> {
  // list of screens

  final List<Widget> _screens = [
    const ChatHistoryScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatProvider>(builder: (context, chatProvider, child) {
      return Scaffold(
          body: PageView(
            controller: chatProvider.pageController,
            children: _screens,
            onPageChanged: (index) {
              chatProvider.setCurrentIndex(newIndex: index);
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            selectedIconTheme: const IconThemeData(color: Colors.white),
            currentIndex: chatProvider.currentIndex,
            elevation: 0,
            unselectedItemColor: Colors.blue,
            selectedItemColor: Theme.of(context).colorScheme.onInverseSurface,
            onTap: (index) {
              chatProvider.setCurrentIndex(newIndex: index);
              chatProvider.pageController.jumpToPage(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'Chat History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ));
    });
  }
}
