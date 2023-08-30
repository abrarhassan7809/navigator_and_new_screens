import 'package:demo4/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc),
              ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                accountName: Text('Sheela'),
                accountEmail: Text('sheela@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Screen Two'),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.system_security_update),
              title: const Text('Version Update'),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: (){},
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, ScreenTwo.id);

                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => ScreenTwo())
                  // );

                },
                child: const Text('Screen 1')),
          )
        ],
      ),
    );
  }
}

