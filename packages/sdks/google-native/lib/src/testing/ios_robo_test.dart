// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';

/// A test that explores an iOS application on an iOS device.
class IosRoboTest {
  /// The bundle ID for the app-under-test. This is determined by examining the application's "Info.plist" file.
  final pulumi.Input<String>? appBundleId;

  /// The ipa stored at this file should be used to run the test.
  final pulumi.Input<FileReference> appIpa;

  /// An optional Roboscript to customize the crawl. See https://firebase.google.com/docs/test-lab/android/robo-scripts-reference for more information about Roboscripts.
  final pulumi.Input<FileReference>? roboScript;

  /// Creates a new [IosRoboTest].
  /// [appBundleId] The bundle ID for the app-under-test. This is determined by examining the application's "Info.plist" file.
  /// [appIpa] The ipa stored at this file should be used to run the test.
  /// [roboScript] An optional Roboscript to customize the crawl. See https://firebase.google.com/docs/test-lab/android/robo-scripts-reference for more information about Roboscripts.
  IosRoboTest({this.appBundleId, required this.appIpa, this.roboScript});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appBundleId': ?appBundleId,
      'appIpa': pulumi.Input.mapInputValue<FileReference, Map<String, dynamic>>(
        appIpa,
        (value) => value.toMap(),
      ),
      'roboScript':
          ?pulumi.Input.mapOptionalInputValue<
            FileReference,
            Map<String, dynamic>
          >(roboScript, (value) => value.toMap()),
    };
  }

  factory IosRoboTest.fromMap(Map<String, dynamic> map) {
    return IosRoboTest(
      appBundleId: (() {
        final guardedValue = map['appBundleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appIpa: pulumi.Input.fromValue(
        FileReference.fromMap((map['appIpa']! as Map).cast<String, dynamic>()),
      ),
      roboScript: (() {
        final guardedValue = map['roboScript'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileReference.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
