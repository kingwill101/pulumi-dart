// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference_response.dart';

/// An Android package file to install.
class ApkResponse {
  /// The path to an APK to be installed on the device before the test begins.
  final pulumi.Input<FileReferenceResponse> location;
  /// The java package for the APK to be installed. Value is determined by examining the application's manifest.
  final pulumi.Input<String> packageName;

  /// Creates a new [ApkResponse].
  /// [location] The path to an APK to be installed on the device before the test begins.
  /// [packageName] The java package for the APK to be installed. Value is determined by examining the application's manifest.
  ApkResponse({
    required this.location,
    required this.packageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': pulumi.Input.mapInputValue<FileReferenceResponse, Map<String, dynamic>>(location, (value) => value.toMap()),
      'packageName': packageName,
    };
  }

  factory ApkResponse.fromMap(Map<String, dynamic> map) {
    return ApkResponse(
      location: pulumi.Input.fromValue(FileReferenceResponse.fromMap((map['location']! as Map).cast<String, dynamic>())),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
    );
  }
}

