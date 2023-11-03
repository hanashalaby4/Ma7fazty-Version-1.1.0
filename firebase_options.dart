
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
    apiKey: 'AIzaSyDVnizUgYZVVbLHG-IBvxy3_DuccozNU6A',
    appId: '1:607637062884:web:e54417cfd39253af47d8f1',
    messagingSenderId: '607637062884',
    projectId: 'ma7fazti-72971',
    authDomain: 'ma7fazti-72971.firebaseapp.com',
    storageBucket: 'ma7fazti-72971.appspot.com',
    measurementId: 'G-40BVWDC6XP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjZyHoN74p0Y-Ulsc-zfeBE6cPXjmPnyg',
    appId: '1:607637062884:android:2cc1f96e12331e2847d8f1',
    messagingSenderId: '607637062884',
    projectId: 'ma7fazti-72971',
    storageBucket: 'ma7fazti-72971.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC22rJSylzZWNWp5s2zzNB79_ISmv-kW3g',
    appId: '1:607637062884:ios:9c10d59afffa67fb47d8f1',
    messagingSenderId: '607637062884',
    projectId: 'ma7fazti-72971',
    storageBucket: 'ma7fazti-72971.appspot.com',
    iosBundleId: 'com.example.ma7fazti',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC22rJSylzZWNWp5s2zzNB79_ISmv-kW3g',
    appId: '1:607637062884:ios:c1feb29a2c06ce1447d8f1',
    messagingSenderId: '607637062884',
    projectId: 'ma7fazti-72971',
    storageBucket: 'ma7fazti-72971.appspot.com',
    iosBundleId: 'com.example.ma7fazti.RunnerTests',
  );
}
