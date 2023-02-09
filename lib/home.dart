import 'package:flutter/material.dart';
import 'package:walled/settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      //Button
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Add Custom Wallpapers',
        label: const Text(
          'Add',
          style: TextStyle(fontFamily: 'IBMPlexMono'),
        ),
        icon: const Icon(Icons.add_rounded),
        onPressed: () {},
      ),

      //Body
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            pinned: false,
            expandedHeight: 144,
            toolbarHeight: 120,
            title: const Padding(
              padding: EdgeInsets.only(
                top: 56,
                left: 18,
              ),
              child: Text(
                'wall.ed',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 44,
                ),
              ),
            ),
            actions: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(
                    top: 56,
                    right: 18,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Settings()));
                    },
                    child: const Icon(Icons.settings_rounded),
                  )),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {},
            ),
          )
        ],
      ),
    );
  }
}
