// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. Only applicable for instances in App Engine flexible environment.
class HealthCheckResponse {
  /// Interval between health checks.
  final pulumi.Input<String> checkInterval;
  /// Whether to explicitly disable health checks for this instance.
  final pulumi.Input<bool> disableHealthCheck;
  /// Number of consecutive successful health checks required before receiving traffic.
  final pulumi.Input<int> healthyThreshold;
  /// Host header to send when performing an HTTP health check. Example: "myapp.appspot.com"
  final pulumi.Input<String> host;
  /// Number of consecutive failed health checks required before an instance is restarted.
  final pulumi.Input<int> restartThreshold;
  /// Time before the health check is considered failed.
  final pulumi.Input<String> timeout;
  /// Number of consecutive failed health checks required before removing traffic.
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [HealthCheckResponse].
  /// [checkInterval] Interval between health checks.
  /// [disableHealthCheck] Whether to explicitly disable health checks for this instance.
  /// [healthyThreshold] Number of consecutive successful health checks required before receiving traffic.
  /// [host] Host header to send when performing an HTTP health check. Example: "myapp.appspot.com"
  /// [restartThreshold] Number of consecutive failed health checks required before an instance is restarted.
  /// [timeout] Time before the health check is considered failed.
  /// [unhealthyThreshold] Number of consecutive failed health checks required before removing traffic.
  const HealthCheckResponse({
    required this.checkInterval,
    required this.disableHealthCheck,
    required this.healthyThreshold,
    required this.host,
    required this.restartThreshold,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkInterval': checkInterval,
      'disableHealthCheck': disableHealthCheck,
      'healthyThreshold': healthyThreshold,
      'host': host,
      'restartThreshold': restartThreshold,
      'timeout': timeout,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory HealthCheckResponse.fromMap(Map<String, dynamic> map) {
    return HealthCheckResponse(
      checkInterval: pulumi.Input.fromValue(map['checkInterval'] as String),
      disableHealthCheck: pulumi.Input.fromValue(map['disableHealthCheck'] as bool),
      healthyThreshold: pulumi.Input.fromValue(map['healthyThreshold'] as int),
      host: pulumi.Input.fromValue(map['host'] as String),
      restartThreshold: pulumi.Input.fromValue(map['restartThreshold'] as int),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
      unhealthyThreshold: pulumi.Input.fromValue(map['unhealthyThreshold'] as int),
    );
  }
}
