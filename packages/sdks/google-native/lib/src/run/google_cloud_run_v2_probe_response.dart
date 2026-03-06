// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_grpcaction_response.dart';
import 'google_cloud_run_v2_httpget_action_response.dart';
import 'google_cloud_run_v2_tcpsocket_action_response.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class GoogleCloudRunV2ProbeResponse {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int> failureThreshold;
  /// GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final pulumi.Input<GoogleCloudRunV2GRPCActionResponse> grpc;
  /// HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final pulumi.Input<GoogleCloudRunV2HTTPGetActionResponse> httpGet;
  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final pulumi.Input<int> initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final pulumi.Input<int> periodSeconds;
  /// TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final pulumi.Input<GoogleCloudRunV2TCPSocketActionResponse> tcpSocket;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [GoogleCloudRunV2ProbeResponse].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [httpGet] HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  const GoogleCloudRunV2ProbeResponse({
    required this.failureThreshold,
    required this.grpc,
    required this.httpGet,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.tcpSocket,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': failureThreshold,
      'grpc': pulumi.Input.mapInputValue<GoogleCloudRunV2GRPCActionResponse, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': pulumi.Input.mapInputValue<GoogleCloudRunV2HTTPGetActionResponse, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': initialDelaySeconds,
      'periodSeconds': periodSeconds,
      'tcpSocket': pulumi.Input.mapInputValue<GoogleCloudRunV2TCPSocketActionResponse, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GoogleCloudRunV2ProbeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2ProbeResponse(
      failureThreshold: pulumi.Input.fromValue(map['failureThreshold'] as int),
      grpc: pulumi.Input.fromValue(GoogleCloudRunV2GRPCActionResponse.fromMap((map['grpc']! as Map).cast<String, dynamic>())),
      httpGet: pulumi.Input.fromValue(GoogleCloudRunV2HTTPGetActionResponse.fromMap((map['httpGet']! as Map).cast<String, dynamic>())),
      initialDelaySeconds: pulumi.Input.fromValue(map['initialDelaySeconds'] as int),
      periodSeconds: pulumi.Input.fromValue(map['periodSeconds'] as int),
      tcpSocket: pulumi.Input.fromValue(GoogleCloudRunV2TCPSocketActionResponse.fromMap((map['tcpSocket']! as Map).cast<String, dynamic>())),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
    );
  }
}

