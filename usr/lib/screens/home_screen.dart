import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/calls_screen.dart';
import 'package:couldai_user_app/screens/chat_screen.dart';
import 'package:couldai_user_app/screens/community_screen.dart';
import 'package:couldai_user_app/screens/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.groups)),
            Tab(text: "CHATS"),
            Tab(text: "UPDATES"),
            Tab(text: "CALLS"),
          ],
        ),
        actions: const <Widget>[
          Icon(Icons.camera_alt_outlined),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          CommunityScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
