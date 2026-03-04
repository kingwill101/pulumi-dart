// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. Only applicable for instances in App Engine flexible environment.
class HealthCheckAppengineV1beta {
  /// Interval between health checks.
  final pulumi.Input<String>? checkInterval;

  /// Whether to explicitly disable health checks for this instance.
  final pulumi.Input<bool>? disableHealthCheck;

  /// Number of consecutive successful health checks required before receiving traffic.
  final pulumi.Input<int>? healthyThreshold;

  /// Host header to send when performing an HTTP health check. Example: "myapp.appspot.com"
  final pulumi.Input<String>? host;

  /// Number of consecutive failed health checks required before an instance is restarted.
  final pulumi.Input<int>? restartThreshold;

  /// Time before the health check is considered failed.
  final pulumi.Input<String>? timeout;

  /// Number of consecutive failed health checks required before removing traffic.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [HealthCheckAppengineV1beta].
  /// [checkInterval] Interval between health checks.
  /// [disableHealthCheck] Whether to explicitly disable health checks for this instance.
  /// [healthyThreshold] Number of consecutive successful health checks required before receiving traffic.
  /// [host] Host header to send when performing an HTTP health check. Example: "myapp.appspot.com"
  /// [restartThreshold] Number of consecutive failed health checks required before an instance is restarted.
  /// [timeout] Time before the health check is considered failed.
  /// [unhealthyThreshold] Number of consecutive failed health checks required before removing traffic.
  HealthCheckAppengineV1beta({
    this.checkInterval,
    this.disableHealthCheck,
    this.healthyThreshold,
    this.host,
    this.restartThreshold,
    this.timeout,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkInterval': ?checkInterval,
      'disableHealthCheck': ?disableHealthCheck,
      'healthyThreshold': ?healthyThreshold,
      'host': ?host,
      'restartThreshold': ?restartThreshold,
      'timeout': ?timeout,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory HealthCheckAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return HealthCheckAppengineV1beta(
      checkInterval: (() {
        final guardedValue = map['checkInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableHealthCheck: (() {
        final guardedValue = map['disableHealthCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      healthyThreshold: (() {
        final guardedValue = map['healthyThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restartThreshold: (() {
        final guardedValue = map['restartThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      unhealthyThreshold: (() {
        final guardedValue = map['unhealthyThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
