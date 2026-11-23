// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecServiceHealthCheck {
  /// The number of failed health checks before considered unhealthy.
  final pulumi.Input<int?>? failureThreshold;
  /// The route path used for the HTTP health check ping.
  final pulumi.Input<String?>? httpPath;
  /// The number of seconds to wait before beginning health checks.
  final pulumi.Input<int?>? initialDelaySeconds;
  /// The number of seconds to wait between health checks.
  final pulumi.Input<int?>? periodSeconds;
  /// The port on which the health check will be performed. If not set, the health check will be performed on the component's http_port.
  final pulumi.Input<int?>? port;
  /// The number of successful health checks before considered healthy.
  final pulumi.Input<int?>? successThreshold;
  /// The number of seconds after which the check times out.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [GetAppSpecServiceHealthCheck].
  /// [failureThreshold] The number of failed health checks before considered unhealthy.
  /// [httpPath] The route path used for the HTTP health check ping.
  /// [initialDelaySeconds] The number of seconds to wait before beginning health checks.
  /// [periodSeconds] The number of seconds to wait between health checks.
  /// [port] The port on which the health check will be performed. If not set, the health check will be performed on the component's http_port.
  /// [successThreshold] The number of successful health checks before considered healthy.
  /// [timeoutSeconds] The number of seconds after which the check times out.
  const GetAppSpecServiceHealthCheck({
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

  factory GetAppSpecServiceHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceHealthCheck(
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      httpPath: (() { final guardedValue = map['httpPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
