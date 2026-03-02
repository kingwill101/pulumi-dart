// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';
import 'ios_app_info.dart';
import 'ios_test_loop.dart';
import 'ios_xc_test.dart';

/// A iOS mobile test specification
class IosTest {
  /// Information about the application under test.
  final pulumi.Input<IosAppInfo>? iosAppInfo;
  /// An iOS Robo test.
  final pulumi.Input<Map<String, dynamic>>? iosRoboTest;
  /// An iOS test loop.
  final pulumi.Input<IosTestLoop>? iosTestLoop;
  /// An iOS XCTest.
  final pulumi.Input<IosXcTest>? iosXcTest;
  /// Max time a test is allowed to run before it is automatically cancelled.
  final pulumi.Input<Duration>? testTimeout;

  /// Creates a new [IosTest].
  /// [iosAppInfo] Information about the application under test.
  /// [iosRoboTest] An iOS Robo test.
  /// [iosTestLoop] An iOS test loop.
  /// [iosXcTest] An iOS XCTest.
  /// [testTimeout] Max time a test is allowed to run before it is automatically cancelled.
  IosTest({
    this.iosAppInfo,
    this.iosRoboTest,
    this.iosTestLoop,
    this.iosXcTest,
    this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosAppInfo': ?pulumi.Input.mapOptionalInputValue<IosAppInfo, Map<String, dynamic>>(iosAppInfo, (value) => value.toMap()),
      'iosRoboTest': ?iosRoboTest,
      'iosTestLoop': ?pulumi.Input.mapOptionalInputValue<IosTestLoop, Map<String, dynamic>>(iosTestLoop, (value) => value.toMap()),
      'iosXcTest': ?pulumi.Input.mapOptionalInputValue<IosXcTest, Map<String, dynamic>>(iosXcTest, (value) => value.toMap()),
      'testTimeout': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(testTimeout, (value) => value.toMap()),
    };
  }

  factory IosTest.fromMap(Map<String, dynamic> map) {
    return IosTest(
      iosAppInfo: map['iosAppInfo'] == null ? null : (IosAppInfo.fromMap((map['iosAppInfo']! as Map).cast<String, dynamic>())).input(),
      iosRoboTest: map['iosRoboTest'] == null ? null : ((map['iosRoboTest']! as Map).cast<String, dynamic>()).input(),
      iosTestLoop: map['iosTestLoop'] == null ? null : (IosTestLoop.fromMap((map['iosTestLoop']! as Map).cast<String, dynamic>())).input(),
      iosXcTest: map['iosXcTest'] == null ? null : (IosXcTest.fromMap((map['iosXcTest']! as Map).cast<String, dynamic>())).input(),
      testTimeout: map['testTimeout'] == null ? null : (Duration.fromMap((map['testTimeout']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

