// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
class LivenessCheckAppengineV1beta {
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

  /// Creates a new [LivenessCheckAppengineV1beta].
  /// [checkInterval] Interval between health checks.
  /// [failureThreshold] Number of consecutive failed checks required before considering the VM unhealthy.
  /// [host] Host header to send when performing a HTTP Liveness check. Example: "myapp.appspot.com"
  /// [initialDelay] The initial delay before starting to execute the checks.
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before considering the VM healthy.
  /// [timeout] Time before the check is considered failed.
  LivenessCheckAppengineV1beta({
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

  factory LivenessCheckAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return LivenessCheckAppengineV1beta(
      checkInterval: (() { final guardedValue = map['checkInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialDelay: (() { final guardedValue = map['initialDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

