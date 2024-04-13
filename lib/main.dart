import 'package:flutter/material.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/news_feed.dart';
import 'package:my_app/screens/screen_crud.dart';
import 'package:my_app/screens/setting_screen.dart';
import 'package:my_app/screens/profile_screen.dart';
import 'package:my_app/screens/second.screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const BookShelfScreen(),
    const ProfileScreen(),
    const SecondScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Beranda',
    'Rekomendasi',
    'Profile',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      body: _screens[_selectedIndex],
      drawer: Drawer(
        child: Column(
          children:  [
            const UserAccountsDrawerHeader(
              accountName: Text('Dalem'), 
              accountEmail: Text('dalemanisya8@gmail')),
              const CircleAvatar(backgroundImage: AssetImage('assets/images/DalemAMP.jpeg'),
                radius: 20,
              ),
              const Divider(),
              ListTile(
                title: const Text('Beranda'),
                trailing: const Icon(Icons.home),
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(0);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Rak Buku'),
                trailing: const Icon(Icons.book),
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(1);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Profile'),
                trailing: const Icon(Icons.person),
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(2);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Crud'),
                trailing: const Icon(Icons.edit),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenCrud()),
                ),
              ),
              ListTile(
                title: const Text('NewsFeed'),
                trailing: const Icon(Icons.edit),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsFeed()),
                ),
              )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Rak Buku',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
