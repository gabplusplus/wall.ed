import 'package:flutter/material.dart';
import 'package:walled/about.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded),
              tooltip: 'Return to home',
            );
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(
              leading: Icon(Icons.info_outline_rounded),
              title: Text('About'),
              subtitle: Text('See information about this app'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const About()));
              }),
          ListTile(
              leading: Icon(Icons.paypal_rounded),
              title: Text('Donate on PayPal'),
              subtitle: Text('Support me for improving this app'),
              onTap: () {})
        ],
      ),
    );
  }
}
