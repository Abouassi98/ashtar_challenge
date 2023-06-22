import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:get/get.dart';
import 'core/routing/app_router.dart';
import 'firebase_options.dart';
import 'helper/binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      backButtonDispatcher: router.backButtonDispatcher,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      initialBinding: Binding(),
      theme: ThemeData(
        fontFamily: 'SourceSansPro',
      ),
      debugShowCheckedModeBanner: false,
      title: 'ashtar challenge',
    );
  }
}

