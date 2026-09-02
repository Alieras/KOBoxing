import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBEr1pl37uklaTPxYj5PbRqV3B1fzyLhyI",
            authDomain: "ko-boxing-431ea.firebaseapp.com",
            projectId: "ko-boxing-431ea",
            storageBucket: "ko-boxing-431ea.firebasestorage.app",
            messagingSenderId: "865480309396",
            appId: "1:865480309396:web:7c12e9a299d07a13bdd281",
            measurementId: "G-QQ95RSKT05"));
  } else {
    await Firebase.initializeApp();
  }
}
