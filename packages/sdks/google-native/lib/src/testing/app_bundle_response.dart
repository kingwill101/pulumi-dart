// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference_response.dart';

/// An Android App Bundle file format, containing a BundleConfig.pb file, a base module directory, zero or more dynamic feature module directories. See https://developer.android.com/guide/app-bundle/build for guidance on building App Bundles.
class AppBundleResponse {
  /// .aab file representing the app bundle under test.
  final pulumi.Input<FileReferenceResponse> bundleLocation;

  /// Creates a new [AppBundleResponse].
  /// [bundleLocation] .aab file representing the app bundle under test.
  const AppBundleResponse({
    required this.bundleLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleLocation': pulumi.Input.mapInputValue<FileReferenceResponse, Map<String, dynamic>>(bundleLocation, (value) => value.toMap()),
    };
  }

  factory AppBundleResponse.fromMap(Map<String, dynamic> map) {
    return AppBundleResponse(
      bundleLocation: pulumi.Input.fromValue(FileReferenceResponse.fromMap((map['bundleLocation']! as Map).cast<String, dynamic>())),
    );
  }
}

