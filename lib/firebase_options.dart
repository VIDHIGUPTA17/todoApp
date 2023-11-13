// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBHmVEVhSYUZHpm1vcStm3muGckToaXTtY',
    appId: '1:220221248387:web:345244b593d87e84985cb6',
    messagingSenderId: '220221248387',
    projectId: 'todoauth-3051d',
    authDomain: 'todoauth-3051d.firebaseapp.com',
    storageBucket: 'todoauth-3051d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSU5Ve20QDuredp7yTKemm1vdiAD-Vl1g',
    appId: '1:220221248387:android:331afffca9a4e7fa985cb6',
    messagingSenderId: '220221248387',
    projectId: 'todoauth-3051d',
    storageBucket: 'todoauth-3051d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBH_m5v9pzk6YZbna0z41948P3w_QwEJ_4',
    appId: '1:220221248387:ios:a4858b95028accbc985cb6',
    messagingSenderId: '220221248387',
    projectId: 'todoauth-3051d',
    storageBucket: 'todoauth-3051d.appspot.com',
    iosBundleId: 'com.example.todoapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBH_m5v9pzk6YZbna0z41948P3w_QwEJ_4',
    appId: '1:220221248387:ios:39ad5259924fceef985cb6',
    messagingSenderId: '220221248387',
    projectId: 'todoauth-3051d',
    storageBucket: 'todoauth-3051d.appspot.com',
    iosBundleId: 'com.example.todoapp.RunnerTests',
  );
}