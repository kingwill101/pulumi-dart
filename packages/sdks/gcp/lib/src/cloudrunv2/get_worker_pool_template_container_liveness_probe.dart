// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_container_liveness_probe_grpc.dart';
import 'get_worker_pool_template_container_liveness_probe_http_get.dart';
import 'get_worker_pool_template_container_liveness_probe_tcp_socket.dart';

class GetWorkerPoolTemplateContainerLivenessProbe {
  /// Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int failureThreshold;
  /// Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final List<GetWorkerPoolTemplateContainerLivenessProbeGrpc> grpcs;
  /// Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final List<GetWorkerPoolTemplateContainerLivenessProbeHttpGet> httpGets;
  /// Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final int initialDelaySeconds;
  /// Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final int periodSeconds;
  /// Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final List<GetWorkerPoolTemplateContainerLivenessProbeTcpSocket> tcpSockets;
  /// Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  final int timeoutSeconds;

  /// Creates a new [GetWorkerPoolTemplateContainerLivenessProbe].
  /// [failureThreshold] Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpcs] Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [httpGets] Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [initialDelaySeconds] Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  /// [periodSeconds] Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  /// [tcpSockets] Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [timeoutSeconds] Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  GetWorkerPoolTemplateContainerLivenessProbe({
    required this.failureThreshold,
    required this.grpcs,
    required this.httpGets,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.tcpSockets,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': failureThreshold,
      'grpcs': pulumi.Input.encodeList<GetWorkerPoolTemplateContainerLivenessProbeGrpc, Map<String, dynamic>>(grpcs, (value) => value.toMap()),
      'httpGets': pulumi.Input.encodeList<GetWorkerPoolTemplateContainerLivenessProbeHttpGet, Map<String, dynamic>>(httpGets, (value) => value.toMap()),
      'initialDelaySeconds': initialDelaySeconds,
      'periodSeconds': periodSeconds,
      'tcpSockets': pulumi.Input.encodeList<GetWorkerPoolTemplateContainerLivenessProbeTcpSocket, Map<String, dynamic>>(tcpSockets, (value) => value.toMap()),
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GetWorkerPoolTemplateContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerLivenessProbe(
      failureThreshold: map['failureThreshold'] as int,
      grpcs: pulumi.Input.decodeList<GetWorkerPoolTemplateContainerLivenessProbeGrpc>(map['grpcs'], (value) => GetWorkerPoolTemplateContainerLivenessProbeGrpc.fromMap((value as Map).cast<String, dynamic>())),
      httpGets: pulumi.Input.decodeList<GetWorkerPoolTemplateContainerLivenessProbeHttpGet>(map['httpGets'], (value) => GetWorkerPoolTemplateContainerLivenessProbeHttpGet.fromMap((value as Map).cast<String, dynamic>())),
      initialDelaySeconds: map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] as int,
      tcpSockets: pulumi.Input.decodeList<GetWorkerPoolTemplateContainerLivenessProbeTcpSocket>(map['tcpSockets'], (value) => GetWorkerPoolTemplateContainerLivenessProbeTcpSocket.fromMap((value as Map).cast<String, dynamic>())),
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}

