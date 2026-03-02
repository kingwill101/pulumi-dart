// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Readiness checking configuration for VM instances. Unhealthy instances are removed from traffic rotation.
class ReadinessCheckResponseAppengineV1beta {
  /// A maximum time limit on application initialization, measured from moment the application successfully replies to a healthcheck until it is ready to serve traffic.
  final pulumi.Input<String> appStartTimeout;
  /// Interval between health checks.
  final pulumi.Input<String> checkInterval;
  /// Number of consecutive failed checks required before removing traffic.
  final pulumi.Input<int> failureThreshold;
  /// Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  final pulumi.Input<String> host;
  /// The request path.
  final pulumi.Input<String> path;
  /// Number of consecutive successful checks required before receiving traffic.
  final pulumi.Input<int> successThreshold;
  /// Time before the check is considered failed.
  final pulumi.Input<String> timeout;

  /// Creates a new [ReadinessCheckResponseAppengineV1beta].
  /// [appStartTimeout] A maximum time limit on application initialization, measured from moment the application successfully replies to a healthcheck until it is ready to serve traffic.
  /// [checkInterval] Interval between health checks.
  /// [failureThreshold] Number of consecutive failed checks required before removing traffic.
  /// [host] Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before receiving traffic.
  /// [timeout] Time before the check is considered failed.
  ReadinessCheckResponseAppengineV1beta({
    required this.appStartTimeout,
    required this.checkInterval,
    required this.failureThreshold,
    required this.host,
    required this.path,
    required this.successThreshold,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appStartTimeout': appStartTimeout,
      'checkInterval': checkInterval,
      'failureThreshold': failureThreshold,
      'host': host,
      'path': path,
      'successThreshold': successThreshold,
      'timeout': timeout,
    };
  }

  factory ReadinessCheckResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckResponseAppengineV1beta(
      appStartTimeout: (map['appStartTimeout'] as String).input(),
      checkInterval: (map['checkInterval'] as String).input(),
      failureThreshold: (map['failureThreshold'] as int).input(),
      host: (map['host'] as String).input(),
      path: (map['path'] as String).input(),
      successThreshold: (map['successThreshold'] as int).input(),
      timeout: (map['timeout'] as String).input(),
    );
  }
}

