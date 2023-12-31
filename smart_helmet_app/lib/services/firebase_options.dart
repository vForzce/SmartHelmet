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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATQBxwER-vE_3CJNJ4AvDmQ_X9SMGJJ9s',
    appId: '1:168206761654:android:678676342c80ebdb9e7017',
    messagingSenderId: '168206761654',
    projectId: 'iot-smart-helmet-5a382',
    databaseURL: 'https://iot-smart-helmet-5a382-default-rtdb.firebaseio.com',
    storageBucket: 'iot-smart-helmet-5a382.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAerDFTse44mKMMiX52SYRvyA4bMwBji6A',
    appId: '1:168206761654:ios:8c31378bb5d1b3469e7017',
    messagingSenderId: '168206761654',
    projectId: 'iot-smart-helmet-5a382',
    databaseURL: 'https://iot-smart-helmet-5a382-default-rtdb.firebaseio.com',
    storageBucket: 'iot-smart-helmet-5a382.appspot.com',
    iosBundleId: 'com.example.smartHelmetApp',
  );
}
