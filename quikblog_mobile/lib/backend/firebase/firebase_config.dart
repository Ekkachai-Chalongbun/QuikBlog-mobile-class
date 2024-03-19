import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBLW2muFatCl7dA63xrU_qgsvO6aPLw_9w",
            authDomain: "mobile-odiblc.firebaseapp.com",
            projectId: "mobile-odiblc",
            storageBucket: "mobile-odiblc.appspot.com",
            messagingSenderId: "1029678755879",
            appId: "1:1029678755879:web:dcc264ca52fa63a5001e02"));
  } else {
    await Firebase.initializeApp();
  }
}
