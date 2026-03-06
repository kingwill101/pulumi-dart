// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference_response.dart';

/// A test that explores an iOS application on an iOS device.
class IosRoboTestResponse {
  /// The bundle ID for the app-under-test. This is determined by examining the application's "Info.plist" file.
  final pulumi.Input<String> appBundleId;
  /// The ipa stored at this file should be used to run the test.
  final pulumi.Input<FileReferenceResponse> appIpa;
  /// An optional Roboscript to customize the crawl. See https://firebase.google.com/docs/test-lab/android/robo-scripts-reference for more information about Roboscripts.
  final pulumi.Input<FileReferenceResponse> roboScript;

  /// Creates a new [IosRoboTestResponse].
  /// [appBundleId] The bundle ID for the app-under-test. This is determined by examining the application's "Info.plist" file.
  /// [appIpa] The ipa stored at this file should be used to run the test.
  /// [roboScript] An optional Roboscript to customize the crawl. See https://firebase.google.com/docs/test-lab/android/robo-scripts-reference for more information about Roboscripts.
  const IosRoboTestResponse({
    required this.appBundleId,
    required this.appIpa,
    required this.roboScript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appBundleId': appBundleId,
      'appIpa': pulumi.Input.mapInputValue<FileReferenceResponse, Map<String, dynamic>>(appIpa, (value) => value.toMap()),
      'roboScript': pulumi.Input.mapInputValue<FileReferenceResponse, Map<String, dynamic>>(roboScript, (value) => value.toMap()),
    };
  }

  factory IosRoboTestResponse.fromMap(Map<String, dynamic> map) {
    return IosRoboTestResponse(
      appBundleId: pulumi.Input.fromValue(map['appBundleId'] as String),
      appIpa: pulumi.Input.fromValue(FileReferenceResponse.fromMap((map['appIpa']! as Map).cast<String, dynamic>())),
      roboScript: pulumi.Input.fromValue(FileReferenceResponse.fromMap((map['roboScript']! as Map).cast<String, dynamic>())),
    );
  }
}

