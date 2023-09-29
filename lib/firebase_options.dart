
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
    apiKey: 'AIzaSyAjO2y4NAIlIdal5Nj4Cm5I41s1lhbhRpU',
    appId: '1:67479392845:web:adc0a1c6f4c88f4accc204',
    messagingSenderId: '248317208047',
    projectId: 'mobilutveckling-slutprojekt',
    authDomain: 'mobilutveckling-slutprojekt.firebaseapp.com',
    storageBucket: 'mobilutveckling-slutprojekt.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjO2y4NAIlIdal5Nj4Cm5I41s1lhbhRpU',
    appId: '1:67479392845:android:f7db21fc72a971baccc204',
    messagingSenderId: '248317208047',
    projectId: 'mobilutveckling-slutprojekt',
    storageBucket: 'mobilutveckling-slutprojekt.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByPJBCEcTCp0EQcGCHXY1Wz8I1mhRAaLI',
    appId: '1:248317208047:ios:c73205c7c000c1ac37821a',
    messagingSenderId: '248317208047',
    projectId: 'hitch-e4a25',
    storageBucket: 'hitch-e4a25.appspot.com',
    iosClientId: '248317208047-mjhism759kathie80lapuh2074cavm2o.apps.googleusercontent.com',
    iosBundleId: 'com.example.hitchApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyByPJBCEcTCp0EQcGCHXY1Wz8I1mhRAaLI',
    appId: '1:248317208047:ios:c73205c7c000c1ac37821a',
    messagingSenderId: '248317208047',
    projectId: 'hitch-e4a25',
    storageBucket: 'hitch-e4a25.appspot.com',
    iosClientId: '248317208047-mjhism759kathie80lapuh2074cavm2o.apps.googleusercontent.com',
    iosBundleId: 'com.example.hitchApp',
  );
}
