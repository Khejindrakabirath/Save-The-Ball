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
    apiKey: 'AIzaSyCW2juKjaSKGXj7AH4acxXtuyJTd_5fR7U',
    appId: '1:717175042160:web:1eb2f6ead652213e8104b5',
    messagingSenderId: '717175042160',
    projectId: 'save-the-ball-10',
    authDomain: 'save-the-ball-10.firebaseapp.com',
    storageBucket: 'save-the-ball-10.appspot.com',
    measurementId: 'G-9ZJR8BVX4Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBw2onwML1oDOEq6OFjp7s2KQGL5qNhy4U',
    appId: '1:717175042160:android:a892af191dd874c58104b5',
    messagingSenderId: '717175042160',
    projectId: 'save-the-ball-10',
    storageBucket: 'save-the-ball-10.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQ1OGvAvGKoOzvc8evKzVZFgrFsKcePKg',
    appId: '1:717175042160:ios:aa5ccedf9e047aae8104b5',
    messagingSenderId: '717175042160',
    projectId: 'save-the-ball-10',
    storageBucket: 'save-the-ball-10.appspot.com',
    iosBundleId: 'com.example.saveTheBall',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQ1OGvAvGKoOzvc8evKzVZFgrFsKcePKg',
    appId: '1:717175042160:ios:adec9d1a5f5470668104b5',
    messagingSenderId: '717175042160',
    projectId: 'save-the-ball-10',
    storageBucket: 'save-the-ball-10.appspot.com',
    iosBundleId: 'com.example.saveTheBall.RunnerTests',
  );
}
