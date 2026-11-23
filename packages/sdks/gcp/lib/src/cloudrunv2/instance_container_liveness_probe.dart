// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_container_liveness_probe_grpc.dart';
import 'instance_container_liveness_probe_http_get.dart';

class InstanceContainerLivenessProbe {
  /// Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int?>? failureThreshold;
  /// Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet or grpc must be specified.
  /// Structure is documented below.
  final pulumi.Input<InstanceContainerLivenessProbeGrpc?>? grpc;
  /// Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet or grpc must be specified.
  /// Structure is documented below.
  final pulumi.Input<InstanceContainerLivenessProbeHttpGet?>? httpGet;
  /// Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final pulumi.Input<int?>? initialDelaySeconds;
  /// Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final pulumi.Input<int?>? periodSeconds;
  /// Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [InstanceContainerLivenessProbe].
  /// [failureThreshold] Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet or grpc must be specified.
  /// [httpGet] Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet or grpc must be specified.
  /// [initialDelaySeconds] Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  /// [periodSeconds] Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  /// [timeoutSeconds] Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  const InstanceContainerLivenessProbe({
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'grpc': ?pulumi.Input.mapOptionalInputValue<InstanceContainerLivenessProbeGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<InstanceContainerLivenessProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory InstanceContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return InstanceContainerLivenessProbe(
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      grpc: (() { final guardedValue = map['grpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceContainerLivenessProbeGrpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceContainerLivenessProbeHttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
