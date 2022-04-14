import 'package:flutter/material.dart';
import 'package:toushik_banik_flutter_intern/utils/const.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _myButton = true;
  final galleryUrl = 'https://krishworks.com/gallery/';
  final contactUrl = 'https://krishworks.com/contact';
  var url;
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: color1,
            leading: Center(
              child: GestureDetector(
                onTap: (){},
                child: const Text(
                    "Close",style: TextStyle(
                  fontSize: 18,
                  color: color3,
                ),
                ),
              ),
            ),
            title: GestureDetector(
              onTap: (){

              },
                child: Text("Setting"),
            ),
          ),
          body: Row(
            children: [
              Container(
                width: 140,
                color: color3,
                child: Column(
                  children:  [
                    GestureDetector(
                      onTap: () async {
                        await controller.loadUrl(galleryUrl);
                        setState(() {
                          _myButton = true;
                          url = galleryUrl;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 140,
                        color: _myButton? color1 : Colors.white,
                          child: const Center(child: Text("Gallery",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color2,
                          ),),),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await controller.loadUrl(contactUrl);
                        setState(() {
                          _myButton = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 140,
                        color: _myButton? Colors.white : color1,
                        child: const Center(child: Text("Contact Us",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color2,
                          ),),),
                      ),
                    ),

                  ],
                ),
              ),
               Expanded(
                child: WebView(
                  initialUrl: contactUrl,
                  onWebViewCreated: (controller){
                    this.controller = controller;
                  },
                )
              )
            ],
          ),
    ));
  }
}
