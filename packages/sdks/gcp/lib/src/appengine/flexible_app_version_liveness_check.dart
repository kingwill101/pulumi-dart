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
  const FlexibleAppVersionLivenessCheck({
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
      checkInterval: (() { final guardedValue = map['checkInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialDelay: (() { final guardedValue = map['initialDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
