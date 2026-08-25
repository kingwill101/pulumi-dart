// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_container_liveness_probe_grpc.dart';
import 'service_template_container_liveness_probe_http_get.dart';
import 'service_template_container_liveness_probe_tcp_socket.dart';

class ServiceTemplateContainerLivenessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int?>? failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerLivenessProbeGrpc?>? grpc;
  /// HTTPGet specifies the http request to perform.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerLivenessProbeHttpGet?>? httpGet;
  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<int?>? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  final pulumi.Input<int?>? periodSeconds;
  /// TCPSocketAction describes an action based on opening a socket
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerLivenessProbeTcpSocket?>? tcpSocket;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [ServiceTemplateContainerLivenessProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPC specifies an action involving a GRPC port.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  /// [tcpSocket] TCPSocketAction describes an action based on opening a socket
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  const ServiceTemplateContainerLivenessProbe({
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
      'grpc': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateContainerLivenessProbeGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateContainerLivenessProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateContainerLivenessProbeTcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ServiceTemplateContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerLivenessProbe(
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      grpc: (() { final guardedValue = map['grpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateContainerLivenessProbeGrpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateContainerLivenessProbeHttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tcpSocket: (() { final guardedValue = map['tcpSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateContainerLivenessProbeTcpSocket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
