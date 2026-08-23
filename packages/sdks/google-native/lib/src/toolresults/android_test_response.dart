// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_app_info_response.dart';
import 'android_instrumentation_test_response.dart';
import 'android_robo_test_response.dart';
import 'duration_response.dart';

/// An Android mobile test specification.
class AndroidTestResponse {
  /// Information about the application under test.
  final pulumi.Input<AndroidAppInfoResponse> androidAppInfo;
  /// An Android instrumentation test.
  final pulumi.Input<AndroidInstrumentationTestResponse> androidInstrumentationTest;
  /// An Android robo test.
  final pulumi.Input<AndroidRoboTestResponse> androidRoboTest;
  /// An Android test loop.
  final pulumi.Input<Map<String, dynamic>> androidTestLoop;
  /// Max time a test is allowed to run before it is automatically cancelled.
  final pulumi.Input<DurationResponse> testTimeout;

  /// Creates a new [AndroidTestResponse].
  /// [androidAppInfo] Information about the application under test.
  /// [androidInstrumentationTest] An Android instrumentation test.
  /// [androidRoboTest] An Android robo test.
  /// [androidTestLoop] An Android test loop.
  /// [testTimeout] Max time a test is allowed to run before it is automatically cancelled.
  const AndroidTestResponse({
    required this.androidAppInfo,
    required this.androidInstrumentationTest,
    required this.androidRoboTest,
    required this.androidTestLoop,
    required this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidAppInfo': pulumi.Input.mapInputValue<AndroidAppInfoResponse, Map<String, dynamic>>(androidAppInfo, (value) => value.toMap()),
      'androidInstrumentationTest': pulumi.Input.mapInputValue<AndroidInstrumentationTestResponse, Map<String, dynamic>>(androidInstrumentationTest, (value) => value.toMap()),
      'androidRoboTest': pulumi.Input.mapInputValue<AndroidRoboTestResponse, Map<String, dynamic>>(androidRoboTest, (value) => value.toMap()),
      'androidTestLoop': androidTestLoop,
      'testTimeout': pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(testTimeout, (value) => value.toMap()),
    };
  }

  factory AndroidTestResponse.fromMap(Map<String, dynamic> map) {
    return AndroidTestResponse(
      androidAppInfo: pulumi.Input.fromValue(AndroidAppInfoResponse.fromMap((map['androidAppInfo']! as Map).cast<String, dynamic>())),
      androidInstrumentationTest: pulumi.Input.fromValue(AndroidInstrumentationTestResponse.fromMap((map['androidInstrumentationTest']! as Map).cast<String, dynamic>())),
      androidRoboTest: pulumi.Input.fromValue(AndroidRoboTestResponse.fromMap((map['androidRoboTest']! as Map).cast<String, dynamic>())),
      androidTestLoop: pulumi.Input.fromValue((map['androidTestLoop']! as Map).cast<String, dynamic>()),
      testTimeout: pulumi.Input.fromValue(DurationResponse.fromMap((map['testTimeout']! as Map).cast<String, dynamic>())),
    );
  }
}
