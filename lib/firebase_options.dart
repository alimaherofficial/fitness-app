// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDYizwSX5vNrSmZZSl48RMRkEBp9DXjZmU',
    appId: '1:199570936102:web:38075db853e5cabd4f31e7',
    messagingSenderId: '199570936102',
    projectId: 'fitbit-6554e',
    authDomain: 'fitbit-6554e.firebaseapp.com',
    storageBucket: 'fitbit-6554e.appspot.com',
    measurementId: 'G-W1FJW5GBNN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBD0Svxoh8NHP3eSbTefZPxT26IfUc_LP4',
    appId: '1:199570936102:android:0d8b8459b64a673f4f31e7',
    messagingSenderId: '199570936102',
    projectId: 'fitbit-6554e',
    storageBucket: 'fitbit-6554e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPCmGbQ-e-XVrvoViaZ7O0ri3-b0dnTdk',
    appId: '1:199570936102:ios:e9103d9b2e6be35d4f31e7',
    messagingSenderId: '199570936102',
    projectId: 'fitbit-6554e',
    storageBucket: 'fitbit-6554e.appspot.com',
    iosBundleId: 'com.example.fitnessApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPCmGbQ-e-XVrvoViaZ7O0ri3-b0dnTdk',
    appId: '1:199570936102:ios:e9103d9b2e6be35d4f31e7',
    messagingSenderId: '199570936102',
    projectId: 'fitbit-6554e',
    storageBucket: 'fitbit-6554e.appspot.com',
    iosBundleId: 'com.example.fitnessApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDYizwSX5vNrSmZZSl48RMRkEBp9DXjZmU',
    appId: '1:199570936102:web:7715040bfe4846ae4f31e7',
    messagingSenderId: '199570936102',
    projectId: 'fitbit-6554e',
    authDomain: 'fitbit-6554e.firebaseapp.com',
    storageBucket: 'fitbit-6554e.appspot.com',
    measurementId: 'G-7JQK8JQPF9',
  );
}
