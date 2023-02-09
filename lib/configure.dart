import 'package:flutter/material.dart';
import 'package:walled/settings.dart';

class Configure extends StatefulWidget {
  const Configure({Key? key}) : super(key: key);

  @override
  State<Configure> createState() => _Configure();
}

class _Configure extends State<Configure> {
  double prevHeight = 360.0;
  double prevWidth = 180.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Configure',
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

          //SliverList
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 36,
                      bottom: 12,
                    ),
                    child: Text(
                      'HOME SCREEN',
                      style: TextStyle(
                        fontFamily: 'IBMPlexMono',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: prevHeight,
                        width: prevWidth,
                        child: const Card(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: prevHeight,
                        width: prevWidth,
                        child: const Card(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                      left: 36,
                      bottom: 12,
                      right: 260,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: ElevatedButtonTheme(
                        data: const ElevatedButtonThemeData(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.add_rounded),
                            Text('Add'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 12,
                      left: 36,
                      bottom: 12,
                    ),
                    child: Text(
                      'LOCK SCREEN',
                      style: TextStyle(
                        fontFamily: 'IBMPlexMono',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
