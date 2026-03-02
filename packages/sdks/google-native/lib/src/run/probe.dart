// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_action.dart';
import 'grpcaction.dart';
import 'httpget_action.dart';
import 'tcpsocket_action.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class Probe {
  /// Not supported by Cloud Run.
  final pulumi.Input<ExecAction>? exec;
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int>? failureThreshold;
  /// GRPCAction specifies an action involving a GRPC port.
  final pulumi.Input<GRPCAction>? grpc;
  /// HTTPGet specifies the http request to perform.
  final pulumi.Input<HTTPGetAction>? httpGet;
  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final pulumi.Input<int>? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final pulumi.Input<int>? periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 if set.
  final pulumi.Input<int>? successThreshold;
  /// TCPSocket specifies an action involving a TCP port.
  final pulumi.Input<TCPSocketAction>? tcpSocket;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds; if period_seconds is not set, must be less or equal than 10.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [Probe].
  /// [exec] Not supported by Cloud Run.
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPCAction specifies an action involving a GRPC port.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 if set.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds; if period_seconds is not set, must be less or equal than 10.
  Probe({
    this.exec,
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?pulumi.Input.mapOptionalInputValue<ExecAction, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'failureThreshold': ?failureThreshold,
      'grpc': ?pulumi.Input.mapOptionalInputValue<GRPCAction, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<HTTPGetAction, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<TCPSocketAction, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory Probe.fromMap(Map<String, dynamic> map) {
    return Probe(
      exec: map['exec'] == null ? null : (ExecAction.fromMap((map['exec'] as Map).cast<String, dynamic>())).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold'] as int).input(),
      grpc: map['grpc'] == null ? null : (GRPCAction.fromMap((map['grpc'] as Map).cast<String, dynamic>())).input(),
      httpGet: map['httpGet'] == null ? null : (HTTPGetAction.fromMap((map['httpGet'] as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds'] as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds'] as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold'] as int).input(),
      tcpSocket: map['tcpSocket'] == null ? null : (TCPSocketAction.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>())).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds'] as int).input(),
    );
  }
}

