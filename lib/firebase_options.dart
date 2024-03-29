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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDBCTvMRCGq_ZX80uo0ElFXjNFgiHKhoqQ',
    appId: '1:97385190930:web:ea78f4710432cc7a776acb',
    messagingSenderId: '97385190930',
    projectId: 'chatforum-3f8d5',
    authDomain: 'chatforum-3f8d5.firebaseapp.com',
    storageBucket: 'chatforum-3f8d5.appspot.com',
    measurementId: 'G-TE4YSPHEZT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAnt6SvbbZzX9ZsTDvoMHWzjqbOkYbkg4',
    appId: '1:97385190930:android:c8705b47e2717ffe776acb',
    messagingSenderId: '97385190930',
    projectId: 'chatforum-3f8d5',
    storageBucket: 'chatforum-3f8d5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBm01z1Bu_zSuPt3hELGflZrzNtw2pqZsU',
    appId: '1:97385190930:ios:dc6b968621e277ce776acb',
    messagingSenderId: '97385190930',
    projectId: 'chatforum-3f8d5',
    storageBucket: 'chatforum-3f8d5.appspot.com',
    iosClientId: '97385190930-dgp8d8tlt9pabd69f14shnn1lrf1cqbf.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatforum',
  );
}
