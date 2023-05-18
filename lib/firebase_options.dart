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
    apiKey: 'AIzaSyByGIAeZwgeIuICEsvoKxQjPdX_IKr2HYk',
    appId: '1:747866795539:web:cae40d4c079199050f19e6',
    messagingSenderId: '747866795539',
    projectId: 'whatsappkg',
    authDomain: 'whatsappkg.firebaseapp.com',
    storageBucket: 'whatsappkg.appspot.com',
    measurementId: 'G-9Z2MEP3KZ7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAnIdJSV_r--IMnMsiRGoIyT52p2mpbc4',
    appId: '1:747866795539:android:08f49d3031dd85480f19e6',
    messagingSenderId: '747866795539',
    projectId: 'whatsappkg',
    storageBucket: 'whatsappkg.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC58c9t4yGhvENaONz4qtMLL_O7AY2b4wk',
    appId: '1:747866795539:ios:ebbb928a7002814f0f19e6',
    messagingSenderId: '747866795539',
    projectId: 'whatsappkg',
    storageBucket: 'whatsappkg.appspot.com',
    iosClientId: '747866795539-pj2ph9khjvl3elq02h0rrrcjmp3j3jpt.apps.googleusercontent.com',
    iosBundleId: 'com.whatsappkg.whatsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC58c9t4yGhvENaONz4qtMLL_O7AY2b4wk',
    appId: '1:747866795539:ios:ebbb928a7002814f0f19e6',
    messagingSenderId: '747866795539',
    projectId: 'whatsappkg',
    storageBucket: 'whatsappkg.appspot.com',
    iosClientId: '747866795539-pj2ph9khjvl3elq02h0rrrcjmp3j3jpt.apps.googleusercontent.com',
    iosBundleId: 'com.whatsappkg.whatsApp',
  );
}
