// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_instrumentation_test.dart';
import 'android_robo_test.dart';
import 'android_test_loop.dart';
import 'ios_robo_test.dart';
import 'ios_test_loop.dart';
import 'ios_test_setup.dart';
import 'ios_xc_test.dart';
import 'test_setup.dart';

/// A description of how to run the test.
class TestSpecification {
  /// An Android instrumentation test.
  final pulumi.Input<AndroidInstrumentationTest>? androidInstrumentationTest;
  /// An Android robo test.
  final pulumi.Input<AndroidRoboTest>? androidRoboTest;
  /// An Android Application with a Test Loop.
  final pulumi.Input<AndroidTestLoop>? androidTestLoop;
  /// Disables performance metrics recording. May reduce test latency.
  final pulumi.Input<bool>? disablePerformanceMetrics;
  /// Disables video recording. May reduce test latency.
  final pulumi.Input<bool>? disableVideoRecording;
  /// An iOS Robo test.
  final pulumi.Input<IosRoboTest>? iosRoboTest;
  /// An iOS application with a test loop.
  final pulumi.Input<IosTestLoop>? iosTestLoop;
  /// Test setup requirements for iOS.
  final pulumi.Input<IosTestSetup>? iosTestSetup;
  /// An iOS XCTest, via an .xctestrun file.
  final pulumi.Input<IosXcTest>? iosXcTest;
  /// Test setup requirements for Android e.g. files to install, bootstrap scripts.
  final pulumi.Input<TestSetup>? testSetup;
  /// Max time a test execution is allowed to run before it is automatically cancelled. The default value is 5 min.
  final pulumi.Input<String>? testTimeout;

  /// Creates a new [TestSpecification].
  /// [androidInstrumentationTest] An Android instrumentation test.
  /// [androidRoboTest] An Android robo test.
  /// [androidTestLoop] An Android Application with a Test Loop.
  /// [disablePerformanceMetrics] Disables performance metrics recording. May reduce test latency.
  /// [disableVideoRecording] Disables video recording. May reduce test latency.
  /// [iosRoboTest] An iOS Robo test.
  /// [iosTestLoop] An iOS application with a test loop.
  /// [iosTestSetup] Test setup requirements for iOS.
  /// [iosXcTest] An iOS XCTest, via an .xctestrun file.
  /// [testSetup] Test setup requirements for Android e.g. files to install, bootstrap scripts.
  /// [testTimeout] Max time a test execution is allowed to run before it is automatically cancelled. The default value is 5 min.
  TestSpecification({
    this.androidInstrumentationTest,
    this.androidRoboTest,
    this.androidTestLoop,
    this.disablePerformanceMetrics,
    this.disableVideoRecording,
    this.iosRoboTest,
    this.iosTestLoop,
    this.iosTestSetup,
    this.iosXcTest,
    this.testSetup,
    this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidInstrumentationTest': ?pulumi.Input.mapOptionalInputValue<AndroidInstrumentationTest, Map<String, dynamic>>(androidInstrumentationTest, (value) => value.toMap()),
      'androidRoboTest': ?pulumi.Input.mapOptionalInputValue<AndroidRoboTest, Map<String, dynamic>>(androidRoboTest, (value) => value.toMap()),
      'androidTestLoop': ?pulumi.Input.mapOptionalInputValue<AndroidTestLoop, Map<String, dynamic>>(androidTestLoop, (value) => value.toMap()),
      'disablePerformanceMetrics': ?disablePerformanceMetrics,
      'disableVideoRecording': ?disableVideoRecording,
      'iosRoboTest': ?pulumi.Input.mapOptionalInputValue<IosRoboTest, Map<String, dynamic>>(iosRoboTest, (value) => value.toMap()),
      'iosTestLoop': ?pulumi.Input.mapOptionalInputValue<IosTestLoop, Map<String, dynamic>>(iosTestLoop, (value) => value.toMap()),
      'iosTestSetup': ?pulumi.Input.mapOptionalInputValue<IosTestSetup, Map<String, dynamic>>(iosTestSetup, (value) => value.toMap()),
      'iosXcTest': ?pulumi.Input.mapOptionalInputValue<IosXcTest, Map<String, dynamic>>(iosXcTest, (value) => value.toMap()),
      'testSetup': ?pulumi.Input.mapOptionalInputValue<TestSetup, Map<String, dynamic>>(testSetup, (value) => value.toMap()),
      'testTimeout': ?testTimeout,
    };
  }

  factory TestSpecification.fromMap(Map<String, dynamic> map) {
    return TestSpecification(
      androidInstrumentationTest: map['androidInstrumentationTest'] == null ? null : (AndroidInstrumentationTest.fromMap((map['androidInstrumentationTest']! as Map).cast<String, dynamic>())).input(),
      androidRoboTest: map['androidRoboTest'] == null ? null : (AndroidRoboTest.fromMap((map['androidRoboTest']! as Map).cast<String, dynamic>())).input(),
      androidTestLoop: map['androidTestLoop'] == null ? null : (AndroidTestLoop.fromMap((map['androidTestLoop']! as Map).cast<String, dynamic>())).input(),
      disablePerformanceMetrics: map['disablePerformanceMetrics'] == null ? null : (map['disablePerformanceMetrics']! as bool).input(),
      disableVideoRecording: map['disableVideoRecording'] == null ? null : (map['disableVideoRecording']! as bool).input(),
      iosRoboTest: map['iosRoboTest'] == null ? null : (IosRoboTest.fromMap((map['iosRoboTest']! as Map).cast<String, dynamic>())).input(),
      iosTestLoop: map['iosTestLoop'] == null ? null : (IosTestLoop.fromMap((map['iosTestLoop']! as Map).cast<String, dynamic>())).input(),
      iosTestSetup: map['iosTestSetup'] == null ? null : (IosTestSetup.fromMap((map['iosTestSetup']! as Map).cast<String, dynamic>())).input(),
      iosXcTest: map['iosXcTest'] == null ? null : (IosXcTest.fromMap((map['iosXcTest']! as Map).cast<String, dynamic>())).input(),
      testSetup: map['testSetup'] == null ? null : (TestSetup.fromMap((map['testSetup']! as Map).cast<String, dynamic>())).input(),
      testTimeout: map['testTimeout'] == null ? null : (map['testTimeout']! as String).input(),
    );
  }
}

