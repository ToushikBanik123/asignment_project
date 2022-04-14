import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toushik_banik_flutter_intern/utils/const.dart';


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


class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 3, vsync: this);
    return MaterialApp(
      home: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: Container(
              color: color1,
              height: 60,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    child: Icon(settings_outlined,color: Colors.white,),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Center(
                        child: Container(
                          width: 400,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: color4,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TabBar(
                                  indicator: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: color3,
                                    border: Border.all(width: 10,color: color4),
                                  ),
                                  controller: tabController,
                                  labelPadding: EdgeInsets.symmetric(horizontal: 30),
                                  tabs: const [
                                    Tab(child: Text("HOME",style: TextStyle(color: Colors.black),)),
                                    Tab(child: Text("ABOUT US",style: TextStyle(color: Colors.black),)),
                                    Tab(child: Text("UPDATES",style: TextStyle(color: Colors.black),)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
