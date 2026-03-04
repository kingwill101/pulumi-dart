// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';
import 'ios_app_info_response.dart';
import 'ios_test_loop_response.dart';
import 'ios_xc_test_response.dart';

/// A iOS mobile test specification
class IosTestResponse {
  /// Information about the application under test.
  final pulumi.Input<IosAppInfoResponse> iosAppInfo;

  /// An iOS Robo test.
  final pulumi.Input<Map<String, dynamic>> iosRoboTest;

  /// An iOS test loop.
  final pulumi.Input<IosTestLoopResponse> iosTestLoop;

  /// An iOS XCTest.
  final pulumi.Input<IosXcTestResponse> iosXcTest;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final pulumi.Input<DurationResponse> testTimeout;

  /// Creates a new [IosTestResponse].
  /// [iosAppInfo] Information about the application under test.
  /// [iosRoboTest] An iOS Robo test.
  /// [iosTestLoop] An iOS test loop.
  /// [iosXcTest] An iOS XCTest.
  /// [testTimeout] Max time a test is allowed to run before it is automatically cancelled.
  IosTestResponse({
    required this.iosAppInfo,
    required this.iosRoboTest,
    required this.iosTestLoop,
    required this.iosXcTest,
    required this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosAppInfo':
          pulumi.Input.mapInputValue<IosAppInfoResponse, Map<String, dynamic>>(
            iosAppInfo,
            (value) => value.toMap(),
          ),
      'iosRoboTest': iosRoboTest,
      'iosTestLoop':
          pulumi.Input.mapInputValue<IosTestLoopResponse, Map<String, dynamic>>(
            iosTestLoop,
            (value) => value.toMap(),
          ),
      'iosXcTest':
          pulumi.Input.mapInputValue<IosXcTestResponse, Map<String, dynamic>>(
            iosXcTest,
            (value) => value.toMap(),
          ),
      'testTimeout':
          pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(
            testTimeout,
            (value) => value.toMap(),
          ),
    };
  }

  factory IosTestResponse.fromMap(Map<String, dynamic> map) {
    return IosTestResponse(
      iosAppInfo: pulumi.Input.fromValue(
        IosAppInfoResponse.fromMap(
          (map['iosAppInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      iosRoboTest: pulumi.Input.fromValue(
        (map['iosRoboTest']! as Map).cast<String, dynamic>(),
      ),
      iosTestLoop: pulumi.Input.fromValue(
        IosTestLoopResponse.fromMap(
          (map['iosTestLoop']! as Map).cast<String, dynamic>(),
        ),
      ),
      iosXcTest: pulumi.Input.fromValue(
        IosXcTestResponse.fromMap(
          (map['iosXcTest']! as Map).cast<String, dynamic>(),
        ),
      ),
      testTimeout: pulumi.Input.fromValue(
        DurationResponse.fromMap(
          (map['testTimeout']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
