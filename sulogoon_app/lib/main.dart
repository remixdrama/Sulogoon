import 'dart:ffi';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sulogoon_app/amplifyconfiguration.dart';
import 'login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureAmplify();
  runApp(const SulogoonApp());
}

Future<void> configureAmplify() async {
  // AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
  // Amplify.configure([authPlugin]);
  Amplify.addPlugins([AmplifyAuthCognito()]);

  try {
    await Amplify.configure(amplifyconfig);
  } catch (e) {
    print("Amplify is already configured");
  }
}

//ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// content: Text("Confirmation complete"),));

class SulogoonApp extends StatelessWidget {
  const SulogoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
