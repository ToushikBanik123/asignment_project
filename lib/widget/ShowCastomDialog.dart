import 'package:flutter/material.dart';
import '../utils/routes.dart';
import 'package:pinput/pinput.dart';
import 'package:toushik_banik_flutter_intern/utils/const.dart';

bool password = false;

showCustomDialog(BuildContext context) => showDialog(
  context: context,
  barrierDismissible: true,
  builder: (BuildContext context) {
    return  Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              const Text(
                'Developer Passcode',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 12),
              Pinput(
              length: 6,
              onCompleted: (pin) async {
                (int.parse(pin) == (day*month*year))?await Navigator.pushNamed(context, MyRoutes.settingsRoute): (){};
                Navigator.of(context).pop();
              },
            ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  },
);
