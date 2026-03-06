// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_liveness_probe_exec.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_liveness_probe_grpc.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_liveness_probe_http_get.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_liveness_probe_tcp_socket.dart';

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe {
  /// ExecAction specifies a command to execute.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeExec>? exec;
  /// Number of consecutive failures before the probe is considered failed.
  /// Defaults to 3. Minimum value is 1.
  /// Maps to Kubernetes probe argument 'failureThreshold'.
  final pulumi.Input<int>? failureThreshold;
  /// GrpcAction checks the health of a container using a gRPC service.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc>? grpc;
  /// HttpGetAction describes an action based on HTTP Get requests.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet>? httpGet;
  /// Number of seconds to wait before starting the probe. Defaults to 0.
  /// Minimum value is 0.
  /// Maps to Kubernetes probe argument 'initialDelaySeconds'.
  final pulumi.Input<int>? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds.
  /// Minimum value is 1. Must be less than timeout_seconds.
  /// Maps to Kubernetes probe argument 'periodSeconds'.
  final pulumi.Input<int>? periodSeconds;
  /// Number of consecutive successes before the probe is considered successful.
  /// Defaults to 1. Minimum value is 1.
  /// Maps to Kubernetes probe argument 'successThreshold'.
  final pulumi.Input<int>? successThreshold;
  /// TcpSocketAction probes the health of a container by opening a TCP socket
  /// connection.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket>? tcpSocket;
  /// Number of seconds after which the probe times out. Defaults to 1 second.
  /// Minimum value is 1. Must be greater or equal to period_seconds.
  /// Maps to Kubernetes probe argument 'timeoutSeconds'.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe].
  /// [exec] ExecAction specifies a command to execute.
  /// [failureThreshold] Number of consecutive failures before the probe is considered failed.
  /// [grpc] GrpcAction checks the health of a container using a gRPC service.
  /// [httpGet] HttpGetAction describes an action based on HTTP Get requests.
  /// [initialDelaySeconds] Number of seconds to wait before starting the probe. Defaults to 0.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds.
  /// [successThreshold] Number of consecutive successes before the probe is considered successful.
  /// [tcpSocket] TcpSocketAction probes the health of a container by opening a TCP socket
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second.
  const AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe({
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
      'exec': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeExec, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'failureThreshold': ?failureThreshold,
      'grpc': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe(
      exec: (() { final guardedValue = map['exec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeExec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      grpc: (() { final guardedValue = map['grpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tcpSocket: (() { final guardedValue = map['tcpSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

