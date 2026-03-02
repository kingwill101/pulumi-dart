// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionLivenessCheck {
  /// Interval between health checks.
  final pulumi.Input<String>? checkInterval;
  /// Number of consecutive failed checks required before considering the VM unhealthy. Default: 4.
  final pulumi.Input<double>? failureThreshold;
  /// Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  final pulumi.Input<String>? host;
  /// The initial delay before starting to execute the checks. Default: "300s"
  final pulumi.Input<String>? initialDelay;
  /// The request path.
  final pulumi.Input<String> path;
  /// Number of consecutive successful checks required before considering the VM healthy. Default: 2.
  final pulumi.Input<double>? successThreshold;
  /// Time before the check is considered failed. Default: "4s"
  final pulumi.Input<String>? timeout;

  /// Creates a new [FlexibleAppVersionLivenessCheck].
  /// [checkInterval] Interval between health checks.
  /// [failureThreshold] Number of consecutive failed checks required before considering the VM unhealthy. Default: 4.
  /// [host] Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  /// [initialDelay] The initial delay before starting to execute the checks. Default: "300s"
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before considering the VM healthy. Default: 2.
  /// [timeout] Time before the check is considered failed. Default: "4s"
  FlexibleAppVersionLivenessCheck({
    this.checkInterval,
    this.failureThreshold,
    this.host,
    this.initialDelay,
    required this.path,
    this.successThreshold,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkInterval': ?checkInterval,
      'failureThreshold': ?failureThreshold,
      'host': ?host,
      'initialDelay': ?initialDelay,
      'path': path,
      'successThreshold': ?successThreshold,
      'timeout': ?timeout,
    };
  }

  factory FlexibleAppVersionLivenessCheck.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionLivenessCheck(
      checkInterval: map['checkInterval'] == null ? null : (map['checkInterval'] as String).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold'] as double).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      initialDelay: map['initialDelay'] == null ? null : (map['initialDelay'] as String).input(),
      path: (map['path'] as String).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold'] as double).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
    );
  }
}

