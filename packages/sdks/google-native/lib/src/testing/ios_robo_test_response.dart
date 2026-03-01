// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference_response.dart';

/// A test that explores an iOS application on an iOS device.
class IosRoboTestResponse {
  /// The bundle ID for the app-under-test. This is determined by examining the application's "Info.plist" file.
  final String appBundleId;
  /// The ipa stored at this file should be used to run the test.
  final FileReferenceResponse appIpa;
  /// An optional Roboscript to customize the crawl. See https://firebase.google.com/docs/test-lab/android/robo-scripts-reference for more information about Roboscripts.
  final FileReferenceResponse roboScript;

  /// Creates a new [IosRoboTestResponse].
  /// [appBundleId] The bundle ID for the app-under-test. This is determined by examining the application's "Info.plist" file.
  /// [appIpa] The ipa stored at this file should be used to run the test.
  /// [roboScript] An optional Roboscript to customize the crawl. See https://firebase.google.com/docs/test-lab/android/robo-scripts-reference for more information about Roboscripts.
  IosRoboTestResponse({
    required this.appBundleId,
    required this.appIpa,
    required this.roboScript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appBundleId': appBundleId,
      'appIpa': appIpa.toMap(),
      'roboScript': roboScript.toMap(),
    };
  }

  factory IosRoboTestResponse.fromMap(Map<String, dynamic> map) {
    return IosRoboTestResponse(
      appBundleId: map['appBundleId'] as String,
      appIpa: FileReferenceResponse.fromMap((map['appIpa'] as Map).cast<String, dynamic>()),
      roboScript: FileReferenceResponse.fromMap((map['roboScript'] as Map).cast<String, dynamic>()),
    );
  }
}

