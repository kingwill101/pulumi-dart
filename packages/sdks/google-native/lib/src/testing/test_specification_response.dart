// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_instrumentation_test_response.dart';
import 'android_robo_test_response.dart';
import 'android_test_loop_response.dart';
import 'ios_robo_test_response.dart';
import 'ios_test_loop_response.dart';
import 'ios_test_setup_response.dart';
import 'ios_xc_test_response.dart';
import 'test_setup_response.dart';

/// A description of how to run the test.
class TestSpecificationResponse {
  /// An Android instrumentation test.
  final pulumi.Input<AndroidInstrumentationTestResponse>
  androidInstrumentationTest;

  /// An Android robo test.
  final pulumi.Input<AndroidRoboTestResponse> androidRoboTest;

  /// An Android Application with a Test Loop.
  final pulumi.Input<AndroidTestLoopResponse> androidTestLoop;

  /// Disables performance metrics recording. May reduce test latency.
  final pulumi.Input<bool> disablePerformanceMetrics;

  /// Disables video recording. May reduce test latency.
  final pulumi.Input<bool> disableVideoRecording;

  /// An iOS Robo test.
  final pulumi.Input<IosRoboTestResponse> iosRoboTest;

  /// An iOS application with a test loop.
  final pulumi.Input<IosTestLoopResponse> iosTestLoop;

  /// Test setup requirements for iOS.
  final pulumi.Input<IosTestSetupResponse> iosTestSetup;

  /// An iOS XCTest, via an .xctestrun file.
  final pulumi.Input<IosXcTestResponse> iosXcTest;

  /// Test setup requirements for Android e.g. files to install, bootstrap scripts.
  final pulumi.Input<TestSetupResponse> testSetup;

  /// Max time a test execution is allowed to run before it is automatically cancelled. The default value is 5 min.
  final pulumi.Input<String> testTimeout;

  /// Creates a new [TestSpecificationResponse].
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
  TestSpecificationResponse({
    required this.androidInstrumentationTest,
    required this.androidRoboTest,
    required this.androidTestLoop,
    required this.disablePerformanceMetrics,
    required this.disableVideoRecording,
    required this.iosRoboTest,
    required this.iosTestLoop,
    required this.iosTestSetup,
    required this.iosXcTest,
    required this.testSetup,
    required this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidInstrumentationTest':
          pulumi.Input.mapInputValue<
            AndroidInstrumentationTestResponse,
            Map<String, dynamic>
          >(androidInstrumentationTest, (value) => value.toMap()),
      'androidRoboTest':
          pulumi.Input.mapInputValue<
            AndroidRoboTestResponse,
            Map<String, dynamic>
          >(androidRoboTest, (value) => value.toMap()),
      'androidTestLoop':
          pulumi.Input.mapInputValue<
            AndroidTestLoopResponse,
            Map<String, dynamic>
          >(androidTestLoop, (value) => value.toMap()),
      'disablePerformanceMetrics': disablePerformanceMetrics,
      'disableVideoRecording': disableVideoRecording,
      'iosRoboTest':
          pulumi.Input.mapInputValue<IosRoboTestResponse, Map<String, dynamic>>(
            iosRoboTest,
            (value) => value.toMap(),
          ),
      'iosTestLoop':
          pulumi.Input.mapInputValue<IosTestLoopResponse, Map<String, dynamic>>(
            iosTestLoop,
            (value) => value.toMap(),
          ),
      'iosTestSetup':
          pulumi.Input.mapInputValue<
            IosTestSetupResponse,
            Map<String, dynamic>
          >(iosTestSetup, (value) => value.toMap()),
      'iosXcTest':
          pulumi.Input.mapInputValue<IosXcTestResponse, Map<String, dynamic>>(
            iosXcTest,
            (value) => value.toMap(),
          ),
      'testSetup':
          pulumi.Input.mapInputValue<TestSetupResponse, Map<String, dynamic>>(
            testSetup,
            (value) => value.toMap(),
          ),
      'testTimeout': testTimeout,
    };
  }

  factory TestSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return TestSpecificationResponse(
      androidInstrumentationTest: pulumi.Input.fromValue(
        AndroidInstrumentationTestResponse.fromMap(
          (map['androidInstrumentationTest']! as Map).cast<String, dynamic>(),
        ),
      ),
      androidRoboTest: pulumi.Input.fromValue(
        AndroidRoboTestResponse.fromMap(
          (map['androidRoboTest']! as Map).cast<String, dynamic>(),
        ),
      ),
      androidTestLoop: pulumi.Input.fromValue(
        AndroidTestLoopResponse.fromMap(
          (map['androidTestLoop']! as Map).cast<String, dynamic>(),
        ),
      ),
      disablePerformanceMetrics: pulumi.Input.fromValue(
        map['disablePerformanceMetrics'] as bool,
      ),
      disableVideoRecording: pulumi.Input.fromValue(
        map['disableVideoRecording'] as bool,
      ),
      iosRoboTest: pulumi.Input.fromValue(
        IosRoboTestResponse.fromMap(
          (map['iosRoboTest']! as Map).cast<String, dynamic>(),
        ),
      ),
      iosTestLoop: pulumi.Input.fromValue(
        IosTestLoopResponse.fromMap(
          (map['iosTestLoop']! as Map).cast<String, dynamic>(),
        ),
      ),
      iosTestSetup: pulumi.Input.fromValue(
        IosTestSetupResponse.fromMap(
          (map['iosTestSetup']! as Map).cast<String, dynamic>(),
        ),
      ),
      iosXcTest: pulumi.Input.fromValue(
        IosXcTestResponse.fromMap(
          (map['iosXcTest']! as Map).cast<String, dynamic>(),
        ),
      ),
      testSetup: pulumi.Input.fromValue(
        TestSetupResponse.fromMap(
          (map['testSetup']! as Map).cast<String, dynamic>(),
        ),
      ),
      testTimeout: pulumi.Input.fromValue(map['testTimeout'] as String),
    );
  }
}
