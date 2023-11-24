import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_udid/flutter_udid.dart';
//import 'package:forms9_pos_auth/pages/generate_bill.dart';
import 'package:reporting_app/pages/login.dart';
//import 'package:forms9_pos_auth/pages/search_product.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:window_manager/window_manager.dart';

import 'database.dart';
import 'objectbox.g.dart';

late ObjectBox objectBox;
late Store store;
late User cUser;
late String _deviceId;

const String apiURL = "213.123.212.191";
//const String apiURL = "192.168.1.26:8000";
String storeType = "HERI";
String terminal = "1";
String displayDeviceId = "UNKNOWN";
//String printerName = "Microsoft Print to PDF";
String printerName = "Bill Printer";
//String displayDeviceId = "32444335-3432-3835-5639-393834324435";

int count = 0;

bool connectionStatus = false;

initPlatformState() async {
  String? deviceId;

  // Platform messages may fail, so we use a try/catch PlatformException.
  if (Platform.isAndroid || Platform.isIOS) {
    try {
      deviceId = await FlutterUdid.udid;
    } on PlatformException {
      deviceId = 'Failed to get deviceId.';
    }
  } else {
    try {
      deviceId = await PlatformDeviceId.getDeviceId;
    } on PlatformException {
      deviceId = 'Failed to get deviceId.';
    }
  }

  _deviceId = deviceId!;
  displayDeviceId = _deviceId.trim();
  log("deviceId->$_deviceId");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectBox = await ObjectBox.create();
  store = objectBox.store;
  initPlatformState();
  await Future.delayed(const Duration(seconds: 3));
  if (Platform.isWindows) {
    await windowManager.setTitleBarStyle(TitleBarStyle.hidden);
    windowManager.setFullScreen(true);
  }
  Box<POSNumber> posbox = Box<POSNumber>(store);
  Query<POSNumber> query = posbox.query().build();
  List<POSNumber> poslist = query.find();
  if (poslist.isNotEmpty) {
    terminal = poslist[0].posNumber.toString();
  } else {
    terminal = "1";
  }

  // Periodic API Calls
  Timer.periodic(
    const Duration(minutes: 5),
    (timer) {
      if (true) {
        try {
          getProductData();
          updateSaleData();
        } catch (e) {
          log(e.toString());
        }
      }
    },
  );

  runApp(const MyApp());
}

void updateSaleData() {}

void getProductData() {}

bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
  return true;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WindowListener {
  @override
  void initState() {
    super.initState();
    windowManager.addListener(this);
    BackButtonInterceptor.add(myInterceptor);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    windowManager.removeListener(this);
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Forms9 - PoS',
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginPage());
  }

  @override
  void onWindowFocus() {
    setState(() {});
  }
}
