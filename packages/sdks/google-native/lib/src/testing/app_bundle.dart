// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference.dart';

/// An Android App Bundle file format, containing a BundleConfig.pb file, a base module directory, zero or more dynamic feature module directories. See https://developer.android.com/guide/app-bundle/build for guidance on building App Bundles.
class AppBundle {
  /// .aab file representing the app bundle under test.
  final FileReference? bundleLocation;

  /// Creates a new [AppBundle].
  /// [bundleLocation] .aab file representing the app bundle under test.
  AppBundle({
    this.bundleLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleLocation': ?bundleLocation == null ? null : bundleLocation!.toMap(),
    };
  }

  factory AppBundle.fromMap(Map<String, dynamic> map) {
    return AppBundle(
      bundleLocation: map['bundleLocation'] == null ? null : FileReference.fromMap((map['bundleLocation'] as Map).cast<String, dynamic>()),
    );
  }
}

