// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_app_info.dart';
import 'android_instrumentation_test.dart';
import 'android_robo_test.dart';
import 'duration.dart';

/// An Android mobile test specification.
class AndroidTest {
  /// Information about the application under test.
  final pulumi.Input<AndroidAppInfo>? androidAppInfo;

  /// An Android instrumentation test.
  final pulumi.Input<AndroidInstrumentationTest>? androidInstrumentationTest;

  /// An Android robo test.
  final pulumi.Input<AndroidRoboTest>? androidRoboTest;

  /// An Android test loop.
  final pulumi.Input<Map<String, dynamic>>? androidTestLoop;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final pulumi.Input<Duration>? testTimeout;

  /// Creates a new [AndroidTest].
  /// [androidAppInfo] Information about the application under test.
  /// [androidInstrumentationTest] An Android instrumentation test.
  /// [androidRoboTest] An Android robo test.
  /// [androidTestLoop] An Android test loop.
  /// [testTimeout] Max time a test is allowed to run before it is automatically cancelled.
  AndroidTest({
    this.androidAppInfo,
    this.androidInstrumentationTest,
    this.androidRoboTest,
    this.androidTestLoop,
    this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidAppInfo':
          ?pulumi.Input.mapOptionalInputValue<
            AndroidAppInfo,
            Map<String, dynamic>
          >(androidAppInfo, (value) => value.toMap()),
      'androidInstrumentationTest':
          ?pulumi.Input.mapOptionalInputValue<
            AndroidInstrumentationTest,
            Map<String, dynamic>
          >(androidInstrumentationTest, (value) => value.toMap()),
      'androidRoboTest':
          ?pulumi.Input.mapOptionalInputValue<
            AndroidRoboTest,
            Map<String, dynamic>
          >(androidRoboTest, (value) => value.toMap()),
      'androidTestLoop': ?androidTestLoop,
      'testTimeout':
          ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(
            testTimeout,
            (value) => value.toMap(),
          ),
    };
  }

  factory AndroidTest.fromMap(Map<String, dynamic> map) {
    return AndroidTest(
      androidAppInfo: (() {
        final guardedValue = map['androidAppInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AndroidAppInfo.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      androidInstrumentationTest: (() {
        final guardedValue = map['androidInstrumentationTest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AndroidInstrumentationTest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      androidRoboTest: (() {
        final guardedValue = map['androidRoboTest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AndroidRoboTest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      androidTestLoop: (() {
        final guardedValue = map['androidTestLoop'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      testTimeout: (() {
        final guardedValue = map['testTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Duration.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
