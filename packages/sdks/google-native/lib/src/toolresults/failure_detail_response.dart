// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for an outcome with a FAILURE outcome summary.
class FailureDetailResponse {
  /// If the failure was severe because the system (app) under test crashed.
  final pulumi.Input<bool> crashed;
  /// If the device ran out of memory during a test, causing the test to crash.
  final pulumi.Input<bool> deviceOutOfMemory;
  /// If the Roboscript failed to complete successfully, e.g., because a Roboscript action or assertion failed or a Roboscript action could not be matched during the entire crawl.
  final pulumi.Input<bool> failedRoboscript;
  /// If an app is not installed and thus no test can be run with the app. This might be caused by trying to run a test on an unsupported platform.
  final pulumi.Input<bool> notInstalled;
  /// If a native process (including any other than the app) crashed.
  final pulumi.Input<bool> otherNativeCrash;
  /// If the test overran some time limit, and that is why it failed.
  final pulumi.Input<bool> timedOut;
  /// If the robo was unable to crawl the app; perhaps because the app did not start.
  final pulumi.Input<bool> unableToCrawl;

  /// Creates a new [FailureDetailResponse].
  /// [crashed] If the failure was severe because the system (app) under test crashed.
  /// [deviceOutOfMemory] If the device ran out of memory during a test, causing the test to crash.
  /// [failedRoboscript] If the Roboscript failed to complete successfully, e.g., because a Roboscript action or assertion failed or a Roboscript action could not be matched during the entire crawl.
  /// [notInstalled] If an app is not installed and thus no test can be run with the app. This might be caused by trying to run a test on an unsupported platform.
  /// [otherNativeCrash] If a native process (including any other than the app) crashed.
  /// [timedOut] If the test overran some time limit, and that is why it failed.
  /// [unableToCrawl] If the robo was unable to crawl the app; perhaps because the app did not start.
  const FailureDetailResponse({
    required this.crashed,
    required this.deviceOutOfMemory,
    required this.failedRoboscript,
    required this.notInstalled,
    required this.otherNativeCrash,
    required this.timedOut,
    required this.unableToCrawl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crashed': crashed,
      'deviceOutOfMemory': deviceOutOfMemory,
      'failedRoboscript': failedRoboscript,
      'notInstalled': notInstalled,
      'otherNativeCrash': otherNativeCrash,
      'timedOut': timedOut,
      'unableToCrawl': unableToCrawl,
    };
  }

  factory FailureDetailResponse.fromMap(Map<String, dynamic> map) {
    return FailureDetailResponse(
      crashed: pulumi.Input.fromValue(map['crashed'] as bool),
      deviceOutOfMemory: pulumi.Input.fromValue(map['deviceOutOfMemory'] as bool),
      failedRoboscript: pulumi.Input.fromValue(map['failedRoboscript'] as bool),
      notInstalled: pulumi.Input.fromValue(map['notInstalled'] as bool),
      otherNativeCrash: pulumi.Input.fromValue(map['otherNativeCrash'] as bool),
      timedOut: pulumi.Input.fromValue(map['timedOut'] as bool),
      unableToCrawl: pulumi.Input.fromValue(map['unableToCrawl'] as bool),
    );
  }
}
