// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_action_response.dart';
import 'grpcaction_response.dart';
import 'httpget_action_response.dart';
import 'tcpsocket_action_response.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class ProbeResponse {
  /// Not supported by Cloud Run.
  final pulumi.Input<ExecActionResponse> exec;
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int> failureThreshold;
  /// GRPCAction specifies an action involving a GRPC port.
  final pulumi.Input<GRPCActionResponse> grpc;
  /// HTTPGet specifies the http request to perform.
  final pulumi.Input<HTTPGetActionResponse> httpGet;
  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final pulumi.Input<int> initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final pulumi.Input<int> periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 if set.
  final pulumi.Input<int> successThreshold;
  /// TCPSocket specifies an action involving a TCP port.
  final pulumi.Input<TCPSocketActionResponse> tcpSocket;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds; if period_seconds is not set, must be less or equal than 10.
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [ProbeResponse].
  /// [exec] Not supported by Cloud Run.
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPCAction specifies an action involving a GRPC port.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 if set.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds; if period_seconds is not set, must be less or equal than 10.
  ProbeResponse({
    required this.exec,
    required this.failureThreshold,
    required this.grpc,
    required this.httpGet,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.successThreshold,
    required this.tcpSocket,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': pulumi.Input.mapInputValue<ExecActionResponse, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'failureThreshold': failureThreshold,
      'grpc': pulumi.Input.mapInputValue<GRPCActionResponse, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': pulumi.Input.mapInputValue<HTTPGetActionResponse, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': initialDelaySeconds,
      'periodSeconds': periodSeconds,
      'successThreshold': successThreshold,
      'tcpSocket': pulumi.Input.mapInputValue<TCPSocketActionResponse, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory ProbeResponse.fromMap(Map<String, dynamic> map) {
    return ProbeResponse(
      exec: (ExecActionResponse.fromMap((map['exec'] as Map).cast<String, dynamic>())).input(),
      failureThreshold: (map['failureThreshold'] as int).input(),
      grpc: (GRPCActionResponse.fromMap((map['grpc'] as Map).cast<String, dynamic>())).input(),
      httpGet: (HTTPGetActionResponse.fromMap((map['httpGet'] as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: (map['initialDelaySeconds'] as int).input(),
      periodSeconds: (map['periodSeconds'] as int).input(),
      successThreshold: (map['successThreshold'] as int).input(),
      tcpSocket: (TCPSocketActionResponse.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>())).input(),
      timeoutSeconds: (map['timeoutSeconds'] as int).input(),
    );
  }
}

