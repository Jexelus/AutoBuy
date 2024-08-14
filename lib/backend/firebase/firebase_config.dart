import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDFze-iniXD9SBRxtkkCKbdswBklIfMuHA",
            authDomain: "auto-buy-admin-e3ecji.firebaseapp.com",
            projectId: "auto-buy-admin-e3ecji",
            storageBucket: "auto-buy-admin-e3ecji.appspot.com",
            messagingSenderId: "283213248299",
            appId: "1:283213248299:web:72a556797e2125bedb376e"));
  } else {
    await Firebase.initializeApp();
  }
}
