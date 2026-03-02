// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecServiceHealthCheck {
  /// The number of failed health checks before considered unhealthy.
  final pulumi.Input<int>? failureThreshold;
  /// The route path used for the HTTP health check ping.
  final pulumi.Input<String>? httpPath;
  /// The number of seconds to wait before beginning health checks.
  final pulumi.Input<int>? initialDelaySeconds;
  /// The number of seconds to wait between health checks.
  final pulumi.Input<int>? periodSeconds;
  /// The health check will be performed on this port instead of component's HTTP port.
  final pulumi.Input<int>? port;
  /// The number of successful health checks before considered healthy.
  final pulumi.Input<int>? successThreshold;
  /// The number of seconds after which the check times out.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [AppSpecServiceHealthCheck].
  /// [failureThreshold] The number of failed health checks before considered unhealthy.
  /// [httpPath] The route path used for the HTTP health check ping.
  /// [initialDelaySeconds] The number of seconds to wait before beginning health checks.
  /// [periodSeconds] The number of seconds to wait between health checks.
  /// [port] The health check will be performed on this port instead of component's HTTP port.
  /// [successThreshold] The number of successful health checks before considered healthy.
  /// [timeoutSeconds] The number of seconds after which the check times out.
  AppSpecServiceHealthCheck({
    this.failureThreshold,
    this.httpPath,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.port,
    this.successThreshold,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'httpPath': ?httpPath,
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'port': ?port,
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory AppSpecServiceHealthCheck.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceHealthCheck(
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold'] as int).input(),
      httpPath: map['httpPath'] == null ? null : (map['httpPath'] as String).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds'] as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds'] as int).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold'] as int).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds'] as int).input(),
    );
  }
}

