import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _About();
}

class _About extends State<About> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'About',
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(
                size: 144,
              ),
              const Text(
                'wall.ed',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Version ${_packageInfo.version}${_packageInfo.buildNumber}',
              ),
            ],
          ),
        ));
  }
}
