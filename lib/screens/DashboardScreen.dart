import 'package:flutter/material.dart';

void main() => runApp(const DashboardScreen());

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tópicos Avanzados de Programación'),
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shadowColor: Colors.black,
        elevation: 25,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF363A55),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/gif/obito.gif'),
              ),
              accountName: Text(
                'Gustavo Ramírez Mireles',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
              accountEmail: Text(
                '21030017@itcelaya.edu.mx',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            ListTile(
              title: const Text('Conversor'),
              subtitle: const Text('Conversor de temperaturas'),
              leading: const Icon(Icons.thermostat),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/temp");
              },
            ),
            ListTile(
              title: const Text('Intents'),
              subtitle: const Text('Miscelanea'),
              leading: const Icon(Icons.android),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/int");
              },
            ),
            ListTile(
              title: const Text('The Movies API'),
              subtitle: const Text('TMDB'),
              trailing: const Icon(Icons.arrow_right),
              leading: const Icon(Icons.movie),
              onTap: () {
                Navigator.pushNamed(context, "/movies");
              },
            ),
            ListTile(
              title: const Text('Fruits App'),
              subtitle: const Text('Challenge #1'),
              trailing: const Icon(Icons.arrow_right),
              leading: const Icon(Icons.shopping_bag),
              onTap: () {
                Navigator.pushNamed(context, "/fruits");
              },
            ),
            ListTile(
              title: const Text('Onboarding App'),
              subtitle: const Text('Challenge #2'),
              trailing: const Icon(Icons.arrow_right),
              leading: const Icon(Icons.animation),
              onTap: () {
                Navigator.pushNamed(context, "/onb");
              },
            ),
          ],
        ),
      ),
    );
  }
}
