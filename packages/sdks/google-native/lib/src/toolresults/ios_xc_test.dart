// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A test of an iOS application that uses the XCTest framework.
class IosXcTest {
  /// Bundle ID of the app.
  final pulumi.Input<String>? bundleId;
  /// Xcode version that the test was run with.
  final pulumi.Input<String>? xcodeVersion;

  /// Creates a new [IosXcTest].
  /// [bundleId] Bundle ID of the app.
  /// [xcodeVersion] Xcode version that the test was run with.
  IosXcTest({
    this.bundleId,
    this.xcodeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'xcodeVersion': ?xcodeVersion,
    };
  }

  factory IosXcTest.fromMap(Map<String, dynamic> map) {
    return IosXcTest(
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xcodeVersion: (() { final guardedValue = map['xcodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

