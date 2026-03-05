// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for an outcome with a FAILURE outcome summary.
class FailureDetail {
  /// If the failure was severe because the system (app) under test crashed.
  final pulumi.Input<bool>? crashed;
  /// If the device ran out of memory during a test, causing the test to crash.
  final pulumi.Input<bool>? deviceOutOfMemory;
  /// If the Roboscript failed to complete successfully, e.g., because a Roboscript action or assertion failed or a Roboscript action could not be matched during the entire crawl.
  final pulumi.Input<bool>? failedRoboscript;
  /// If an app is not installed and thus no test can be run with the app. This might be caused by trying to run a test on an unsupported platform.
  final pulumi.Input<bool>? notInstalled;
  /// If a native process (including any other than the app) crashed.
  final pulumi.Input<bool>? otherNativeCrash;
  /// If the test overran some time limit, and that is why it failed.
  final pulumi.Input<bool>? timedOut;
  /// If the robo was unable to crawl the app; perhaps because the app did not start.
  final pulumi.Input<bool>? unableToCrawl;

  /// Creates a new [FailureDetail].
  /// [crashed] If the failure was severe because the system (app) under test crashed.
  /// [deviceOutOfMemory] If the device ran out of memory during a test, causing the test to crash.
  /// [failedRoboscript] If the Roboscript failed to complete successfully, e.g., because a Roboscript action or assertion failed or a Roboscript action could not be matched during the entire crawl.
  /// [notInstalled] If an app is not installed and thus no test can be run with the app. This might be caused by trying to run a test on an unsupported platform.
  /// [otherNativeCrash] If a native process (including any other than the app) crashed.
  /// [timedOut] If the test overran some time limit, and that is why it failed.
  /// [unableToCrawl] If the robo was unable to crawl the app; perhaps because the app did not start.
  FailureDetail({
    this.crashed,
    this.deviceOutOfMemory,
    this.failedRoboscript,
    this.notInstalled,
    this.otherNativeCrash,
    this.timedOut,
    this.unableToCrawl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crashed': ?crashed,
      'deviceOutOfMemory': ?deviceOutOfMemory,
      'failedRoboscript': ?failedRoboscript,
      'notInstalled': ?notInstalled,
      'otherNativeCrash': ?otherNativeCrash,
      'timedOut': ?timedOut,
      'unableToCrawl': ?unableToCrawl,
    };
  }

  factory FailureDetail.fromMap(Map<String, dynamic> map) {
    return FailureDetail(
      crashed: (() { final guardedValue = map['crashed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceOutOfMemory: (() { final guardedValue = map['deviceOutOfMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failedRoboscript: (() { final guardedValue = map['failedRoboscript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notInstalled: (() { final guardedValue = map['notInstalled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      otherNativeCrash: (() { final guardedValue = map['otherNativeCrash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timedOut: (() { final guardedValue = map['timedOut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      unableToCrawl: (() { final guardedValue = map['unableToCrawl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

