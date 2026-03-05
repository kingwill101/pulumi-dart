// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
class LivenessCheckResponse {
  /// Interval between health checks.
  final pulumi.Input<String> checkInterval;
  /// Number of consecutive failed checks required before considering the VM unhealthy.
  final pulumi.Input<int> failureThreshold;
  /// Host header to send when performing a HTTP Liveness check. Example: "myapp.appspot.com"
  final pulumi.Input<String> host;
  /// The initial delay before starting to execute the checks.
  final pulumi.Input<String> initialDelay;
  /// The request path.
  final pulumi.Input<String> path;
  /// Number of consecutive successful checks required before considering the VM healthy.
  final pulumi.Input<int> successThreshold;
  /// Time before the check is considered failed.
  final pulumi.Input<String> timeout;

  /// Creates a new [LivenessCheckResponse].
  /// [checkInterval] Interval between health checks.
  /// [failureThreshold] Number of consecutive failed checks required before considering the VM unhealthy.
  /// [host] Host header to send when performing a HTTP Liveness check. Example: "myapp.appspot.com"
  /// [initialDelay] The initial delay before starting to execute the checks.
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before considering the VM healthy.
  /// [timeout] Time before the check is considered failed.
  LivenessCheckResponse({
    required this.checkInterval,
    required this.failureThreshold,
    required this.host,
    required this.initialDelay,
    required this.path,
    required this.successThreshold,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkInterval': checkInterval,
      'failureThreshold': failureThreshold,
      'host': host,
      'initialDelay': initialDelay,
      'path': path,
      'successThreshold': successThreshold,
      'timeout': timeout,
    };
  }

  factory LivenessCheckResponse.fromMap(Map<String, dynamic> map) {
    return LivenessCheckResponse(
      checkInterval: pulumi.Input.fromValue(map['checkInterval'] as String),
      failureThreshold: pulumi.Input.fromValue(map['failureThreshold'] as int),
      host: pulumi.Input.fromValue(map['host'] as String),
      initialDelay: pulumi.Input.fromValue(map['initialDelay'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      successThreshold: pulumi.Input.fromValue(map['successThreshold'] as int),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
    );
  }
}

