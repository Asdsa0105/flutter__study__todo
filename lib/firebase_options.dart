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
    apiKey: 'AIzaSyC-ta29H-zSfOi87s9xIvLeTQLYJX2ryWE',
    appId: '1:634076855205:web:771f82540d3b9a3f96864c',
    messagingSenderId: '634076855205',
    projectId: 'flutter-todo-2a68f',
    authDomain: 'flutter-todo-2a68f.firebaseapp.com',
    databaseURL: 'https://flutter-todo-2a68f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-todo-2a68f.appspot.com',
    measurementId: 'G-83M11GS77C',

  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChIpq2Xwl1Ml9nsrBuErIPCymdHsvH8as',
    appId: '1:634076855205:android:da1f1f936a6c10d696864c',
    messagingSenderId: '634076855205',
    projectId: 'flutter-todo-2a68f',
    databaseURL: 'https://flutter-todo-2a68f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-todo-2a68f.appspot.com',

  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC69Zc4XqmhlMYYMM-B40gm3fRmeVBK9fQ',
    appId: '1:634076855205:ios:75b9d7be3f2f3d3b96864c',
    messagingSenderId: '634076855205',
    projectId: 'flutter-todo-2a68f',
    databaseURL: 'https://flutter-todo-2a68f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-todo-2a68f.appspot.com',
    iosClientId: '634076855205-t93sjqf505nr63ubfi3ak4avu9e8f1g8.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC69Zc4XqmhlMYYMM-B40gm3fRmeVBK9fQ',
    appId: '1:634076855205:ios:75b9d7be3f2f3d3b96864c',
    messagingSenderId: '634076855205',
    projectId: 'flutter-todo-2a68f',
    databaseURL: 'https://flutter-todo-2a68f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-todo-2a68f.appspot.com',
    iosClientId: '634076855205-t93sjqf505nr63ubfi3ak4avu9e8f1g8.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo',
  );
}
