// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_startup_probe_exec.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_startup_probe_grpc.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_startup_probe_http_get.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_startup_probe_tcp_socket.dart';

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe {
  /// ExecAction specifies a command to execute.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec>? exec;
  /// Number of consecutive failures before the probe is considered failed.
  /// Defaults to 3. Minimum value is 1.
  /// Maps to Kubernetes probe argument 'failureThreshold'.
  final pulumi.Input<int>? failureThreshold;
  /// GrpcAction checks the health of a container using a gRPC service.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc>? grpc;
  /// HttpGetAction describes an action based on HTTP Get requests.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGet>? httpGet;
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
  final pulumi.Input<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket>? tcpSocket;
  /// Number of seconds after which the probe times out. Defaults to 1 second.
  /// Minimum value is 1. Must be greater or equal to period_seconds.
  /// Maps to Kubernetes probe argument 'timeoutSeconds'.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe].
  /// [exec] ExecAction specifies a command to execute.
  /// [failureThreshold] Number of consecutive failures before the probe is considered failed.
  /// [grpc] GrpcAction checks the health of a container using a gRPC service.
  /// [httpGet] HttpGetAction describes an action based on HTTP Get requests.
  /// [initialDelaySeconds] Number of seconds to wait before starting the probe. Defaults to 0.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds.
  /// [successThreshold] Number of consecutive successes before the probe is considered successful.
  /// [tcpSocket] TcpSocketAction probes the health of a container by opening a TCP socket
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second.
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe({
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
      'exec': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'failureThreshold': ?failureThreshold,
      'grpc': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe(
      exec: map['exec'] == null ? null : (AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec.fromMap((map['exec']! as Map).cast<String, dynamic>())).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      grpc: map['grpc'] == null ? null : (AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc.fromMap((map['grpc']! as Map).cast<String, dynamic>())).input(),
      httpGet: map['httpGet'] == null ? null : (AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGet.fromMap((map['httpGet']! as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as int).input(),
      tcpSocket: map['tcpSocket'] == null ? null : (AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket.fromMap((map['tcpSocket']! as Map).cast<String, dynamic>())).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

