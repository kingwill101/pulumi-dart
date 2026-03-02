// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_container_startup_probe_grpc.dart';
import 'worker_pool_template_container_startup_probe_http_get.dart';
import 'worker_pool_template_container_startup_probe_tcp_socket.dart';

class WorkerPoolTemplateContainerStartupProbe {
  /// Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int>? failureThreshold;
  /// Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerStartupProbeGrpc>? grpc;
  /// Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerStartupProbeHttpGet>? httpGet;
  /// Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final pulumi.Input<int>? initialDelaySeconds;
  /// Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final pulumi.Input<int>? periodSeconds;
  /// Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerStartupProbeTcpSocket>? tcpSocket;
  /// Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [WorkerPoolTemplateContainerStartupProbe].
  /// [failureThreshold] Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [httpGet] Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [initialDelaySeconds] Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  /// [periodSeconds] Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  /// [tcpSocket] Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [timeoutSeconds] Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  WorkerPoolTemplateContainerStartupProbe({
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
      'grpc': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerStartupProbeGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerStartupProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerStartupProbeTcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory WorkerPoolTemplateContainerStartupProbe.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerStartupProbe(
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      grpc: map['grpc'] == null ? null : (WorkerPoolTemplateContainerStartupProbeGrpc.fromMap((map['grpc']! as Map).cast<String, dynamic>())).input(),
      httpGet: map['httpGet'] == null ? null : (WorkerPoolTemplateContainerStartupProbeHttpGet.fromMap((map['httpGet']! as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      tcpSocket: map['tcpSocket'] == null ? null : (WorkerPoolTemplateContainerStartupProbeTcpSocket.fromMap((map['tcpSocket']! as Map).cast<String, dynamic>())).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

