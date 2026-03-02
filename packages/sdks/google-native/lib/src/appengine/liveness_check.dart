// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
class LivenessCheck {
  /// Interval between health checks.
  final pulumi.Input<String>? checkInterval;
  /// Number of consecutive failed checks required before considering the VM unhealthy.
  final pulumi.Input<int>? failureThreshold;
  /// Host header to send when performing a HTTP Liveness check. Example: "myapp.appspot.com"
  final pulumi.Input<String>? host;
  /// The initial delay before starting to execute the checks.
  final pulumi.Input<String>? initialDelay;
  /// The request path.
  final pulumi.Input<String>? path;
  /// Number of consecutive successful checks required before considering the VM healthy.
  final pulumi.Input<int>? successThreshold;
  /// Time before the check is considered failed.
  final pulumi.Input<String>? timeout;

  /// Creates a new [LivenessCheck].
  /// [checkInterval] Interval between health checks.
  /// [failureThreshold] Number of consecutive failed checks required before considering the VM unhealthy.
  /// [host] Host header to send when performing a HTTP Liveness check. Example: "myapp.appspot.com"
  /// [initialDelay] The initial delay before starting to execute the checks.
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before considering the VM healthy.
  /// [timeout] Time before the check is considered failed.
  LivenessCheck({
    this.checkInterval,
    this.failureThreshold,
    this.host,
    this.initialDelay,
    this.path,
    this.successThreshold,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkInterval': ?checkInterval,
      'failureThreshold': ?failureThreshold,
      'host': ?host,
      'initialDelay': ?initialDelay,
      'path': ?path,
      'successThreshold': ?successThreshold,
      'timeout': ?timeout,
    };
  }

  factory LivenessCheck.fromMap(Map<String, dynamic> map) {
    return LivenessCheck(
      checkInterval: map['checkInterval'] == null ? null : (map['checkInterval']! as String).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      initialDelay: map['initialDelay'] == null ? null : (map['initialDelay']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as int).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

