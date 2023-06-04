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
    apiKey: 'AIzaSyDKL2vMmUi_CXPmXYgievvkQUUVjpKbXBM',
    appId: '1:242882190009:web:f63ca1bb420ee3d688d968',
    messagingSenderId: '242882190009',
    projectId: 'musically-street-7537a',
    authDomain: 'musically-street-7537a.firebaseapp.com',
    storageBucket: 'musically-street-7537a.appspot.com',
    measurementId: 'G-EQGEFNDN4J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdWBSgyfMBc2t3OegDBzSb37MdJAANy3w',
    appId: '1:242882190009:android:3e9a4d20ea83876288d968',
    messagingSenderId: '242882190009',
    projectId: 'musically-street-7537a',
    storageBucket: 'musically-street-7537a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBV1-3QFl9tQiSm8-twnjYlQJZ9QViZOKA',
    appId: '1:242882190009:ios:b9208ad36da3752688d968',
    messagingSenderId: '242882190009',
    projectId: 'musically-street-7537a',
    storageBucket: 'musically-street-7537a.appspot.com',
    iosClientId: '242882190009-idntblrruo1rirphdssa6fn9ptaa3p6r.apps.googleusercontent.com',
    iosBundleId: 'com.example.musicallyStreet',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDKL2vMmUi_CXPmXYgievvkQUUVjpKbXBM',
    appId: '1:242882190009:web:93ccd6674c9dd47188d968',
    messagingSenderId: '242882190009',
    projectId: 'musically-street-7537a',
    authDomain: 'musically-street-7537a.firebaseapp.com',
    storageBucket: 'musically-street-7537a.appspot.com',
    measurementId: 'G-6HD6NF4M9T',
  );
}