import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/firebase_options.dart';
import 'package:nasa_space_spps_challenge/project_pages/temporary_page.dart';
import 'package:nasa_space_spps_challenge/project_utilities/colors_utility.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: ColorsUtility.daintree),
      home: const TemporaryPage(),
    );
  }
}
