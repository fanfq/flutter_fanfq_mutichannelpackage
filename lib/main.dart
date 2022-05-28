import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'config/EnvironmentConfig.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  late String channelName = "";
  late String platform = "";
  late String appName = "";
  late String packageName = "";
  late String versionName = "";
  late int versionCode = 0;

  init() async{
    //获取包体信息
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    setState((){
      channelName = EnvironmentConfig.CHANNEL_NAME;
      platform = EnvironmentConfig.PLATFORM;

      appName = packageInfo.appName;
      packageName = packageInfo.packageName;
      versionName = packageInfo.version;
      versionCode = int.fromEnvironment(packageInfo.buildNumber,defaultValue: 0);
    });

  }

  @override
  void initState(){
    super.initState();
    init();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'channelName:${channelName}',
            ),
            Text(
              'platform:${platform}',
            ),
            Text(
              'appName:${appName}',
            ),
            Text(
              'packageName:${packageName}',
            ),
            Text(
              'versionName:${versionName}',
            ),
            Text(
              'versionCode:${versionCode}',
            ),
          ],
        ),
      ),
    );
  }
}
