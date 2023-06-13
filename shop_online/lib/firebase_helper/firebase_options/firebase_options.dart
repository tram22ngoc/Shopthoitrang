import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:85183240452:ios:d2e29f05329fe703f29851',
        apiKey: 'AIzaSyBOZreHksLkHeL2cS2_2490y7AN5UWTVt0',
        projectId: 'shopthoitrang-50e76',
        messagingSenderId: '100797142750',
        iosBundleId: 'com.example.shop_online',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:85183240452:android:d2a0a05b28cefa3af29851',
        apiKey: 'AIzaSyDsekrAoBCHSbH_orQwmMCa3M7jKOz8L2U',
        projectId: 'shopthoitrang-50e76',
        messagingSenderId: '100797142750',
      );
    }
  }
}
