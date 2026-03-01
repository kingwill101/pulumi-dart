// ignore_for_file: unused_element, unnecessary_cast

import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_health_probe_exec.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_health_probe_grpc.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_health_probe_http_get.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_health_probe_tcp_socket.dart';

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe {
  /// ExecAction specifies a command to execute.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeExec? exec;
  /// Number of consecutive failures before the probe is considered failed.
  /// Defaults to 3. Minimum value is 1.
  /// Maps to Kubernetes probe argument 'failureThreshold'.
  final int? failureThreshold;
  /// GrpcAction checks the health of a container using a gRPC service.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc? grpc;
  /// HttpGetAction describes an action based on HTTP Get requests.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet? httpGet;
  /// Number of seconds to wait before starting the probe. Defaults to 0.
  /// Minimum value is 0.
  /// Maps to Kubernetes probe argument 'initialDelaySeconds'.
  final int? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds.
  /// Minimum value is 1. Must be less than timeout_seconds.
  /// Maps to Kubernetes probe argument 'periodSeconds'.
  final int? periodSeconds;
  /// Number of consecutive successes before the probe is considered successful.
  /// Defaults to 1. Minimum value is 1.
  /// Maps to Kubernetes probe argument 'successThreshold'.
  final int? successThreshold;
  /// TcpSocketAction probes the health of a container by opening a TCP socket
  /// connection.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket? tcpSocket;
  /// Number of seconds after which the probe times out. Defaults to 1 second.
  /// Minimum value is 1. Must be greater or equal to period_seconds.
  /// Maps to Kubernetes probe argument 'timeoutSeconds'.
  final int? timeoutSeconds;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe].
  /// [exec] ExecAction specifies a command to execute.
  /// [failureThreshold] Number of consecutive failures before the probe is considered failed.
  /// [grpc] GrpcAction checks the health of a container using a gRPC service.
  /// [httpGet] HttpGetAction describes an action based on HTTP Get requests.
  /// [initialDelaySeconds] Number of seconds to wait before starting the probe. Defaults to 0.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds.
  /// [successThreshold] Number of consecutive successes before the probe is considered successful.
  /// [tcpSocket] TcpSocketAction probes the health of a container by opening a TCP socket
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second.
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe({
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
      'exec': ?exec == null ? null : exec!.toMap(),
      'failureThreshold': ?failureThreshold,
      'grpc': ?grpc == null ? null : grpc!.toMap(),
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket': ?tcpSocket == null ? null : tcpSocket!.toMap(),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe(
      exec: map['exec'] == null ? null : AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeExec.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      grpc: map['grpc'] == null ? null : AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc.fromMap((map['grpc'] as Map).cast<String, dynamic>()),
      httpGet: map['httpGet'] == null ? null : AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      tcpSocket: map['tcpSocket'] == null ? null : AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

