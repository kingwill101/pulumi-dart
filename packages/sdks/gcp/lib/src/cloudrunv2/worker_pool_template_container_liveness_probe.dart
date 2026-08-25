// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_container_liveness_probe_grpc.dart';
import 'worker_pool_template_container_liveness_probe_http_get.dart';
import 'worker_pool_template_container_liveness_probe_tcp_socket.dart';

class WorkerPoolTemplateContainerLivenessProbe {
  /// Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int?>? failureThreshold;
  /// Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerLivenessProbeGrpc?>? grpc;
  /// Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerLivenessProbeHttpGet?>? httpGet;
  /// Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final pulumi.Input<int?>? initialDelaySeconds;
  /// Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final pulumi.Input<int?>? periodSeconds;
  /// Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerLivenessProbeTcpSocket?>? tcpSocket;
  /// Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [WorkerPoolTemplateContainerLivenessProbe].
  /// [failureThreshold] Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [httpGet] Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [initialDelaySeconds] Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  /// [periodSeconds] Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  /// [tcpSocket] Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [timeoutSeconds] Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  const WorkerPoolTemplateContainerLivenessProbe({
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'grpc': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerLivenessProbeGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerLivenessProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerLivenessProbeTcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory WorkerPoolTemplateContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerLivenessProbe(
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      grpc: (() { final guardedValue = map['grpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPoolTemplateContainerLivenessProbeGrpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPoolTemplateContainerLivenessProbeHttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tcpSocket: (() { final guardedValue = map['tcpSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPoolTemplateContainerLivenessProbeTcpSocket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
