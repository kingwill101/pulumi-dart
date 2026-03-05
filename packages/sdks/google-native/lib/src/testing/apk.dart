// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';

/// An Android package file to install.
class Apk {
  /// The path to an APK to be installed on the device before the test begins.
  final pulumi.Input<FileReference>? location;
  /// The java package for the APK to be installed. Value is determined by examining the application's manifest.
  final pulumi.Input<String>? packageName;

  /// Creates a new [Apk].
  /// [location] The path to an APK to be installed on the device before the test begins.
  /// [packageName] The java package for the APK to be installed. Value is determined by examining the application's manifest.
  Apk({
    this.location,
    this.packageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?pulumi.Input.mapOptionalInputValue<FileReference, Map<String, dynamic>>(location, (value) => value.toMap()),
      'packageName': ?packageName,
    };
  }

  factory Apk.fromMap(Map<String, dynamic> map) {
    return Apk(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

