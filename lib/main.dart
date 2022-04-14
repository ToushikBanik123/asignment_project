import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toushik_banik_flutter_intern/utils/const.dart';
import 'package:toushik_banik_flutter_intern/pages/home.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeLayout();
  }
}
