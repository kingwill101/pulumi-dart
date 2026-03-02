// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionReadinessCheck {
  /// A maximum time limit on application initialization, measured from moment the application successfully
  /// replies to a healthcheck until it is ready to serve traffic. Default: "300s"
  final pulumi.Input<String>? appStartTimeout;
  /// Interval between health checks.  Default: "5s".
  final pulumi.Input<String>? checkInterval;
  /// Number of consecutive failed checks required before removing traffic. Default: 2.
  final pulumi.Input<double>? failureThreshold;
  /// Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  final pulumi.Input<String>? host;
  /// The request path.
  final pulumi.Input<String> path;
  /// Number of consecutive successful checks required before receiving traffic. Default: 2.
  final pulumi.Input<double>? successThreshold;
  /// Time before the check is considered failed. Default: "4s"
  final pulumi.Input<String>? timeout;

  /// Creates a new [FlexibleAppVersionReadinessCheck].
  /// [appStartTimeout] A maximum time limit on application initialization, measured from moment the application successfully
  /// [checkInterval] Interval between health checks.  Default: "5s".
  /// [failureThreshold] Number of consecutive failed checks required before removing traffic. Default: 2.
  /// [host] Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before receiving traffic. Default: 2.
  /// [timeout] Time before the check is considered failed. Default: "4s"
  FlexibleAppVersionReadinessCheck({
    this.appStartTimeout,
    this.checkInterval,
    this.failureThreshold,
    this.host,
    required this.path,
    this.successThreshold,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appStartTimeout': ?appStartTimeout,
      'checkInterval': ?checkInterval,
      'failureThreshold': ?failureThreshold,
      'host': ?host,
      'path': path,
      'successThreshold': ?successThreshold,
      'timeout': ?timeout,
    };
  }

  factory FlexibleAppVersionReadinessCheck.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionReadinessCheck(
      appStartTimeout: map['appStartTimeout'] == null ? null : (map['appStartTimeout']! as String).input(),
      checkInterval: map['checkInterval'] == null ? null : (map['checkInterval']! as String).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as double).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      path: (map['path'] as String).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as double).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

