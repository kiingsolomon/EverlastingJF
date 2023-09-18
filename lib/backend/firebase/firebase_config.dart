import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBkUqaxEW14YdQAvsOXnwR5HlrAFkX81K0",
            authDomain: "everlasting-joy-foundation.firebaseapp.com",
            projectId: "everlasting-joy-foundation",
            storageBucket: "everlasting-joy-foundation.appspot.com",
            messagingSenderId: "14955409993",
            appId: "1:14955409993:web:db1e1952176f83188c0598",
            measurementId: "G-N02EGZB689"));
  } else {
    await Firebase.initializeApp();
  }
}
