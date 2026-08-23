// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container_startup_probe_grpc.dart';
import 'get_service_template_container_startup_probe_http_get.dart';
import 'get_service_template_container_startup_probe_tcp_socket.dart';

class GetServiceTemplateContainerStartupProbe {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int> failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  final pulumi.Input<List<GetServiceTemplateContainerStartupProbeGrpc>> grpcs;
  /// HTTPGet specifies the http request to perform. Exactly one of HTTPGet or TCPSocket must be specified.
  final pulumi.Input<List<GetServiceTemplateContainerStartupProbeHttpGet>> httpGets;
  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<int> initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  final pulumi.Input<int> periodSeconds;
  /// TCPSocket specifies an action involving a TCP port. Exactly one of HTTPGet or TCPSocket must be specified.
  final pulumi.Input<List<GetServiceTemplateContainerStartupProbeTcpSocket>> tcpSockets;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [GetServiceTemplateContainerStartupProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpcs] GRPC specifies an action involving a GRPC port.
  /// [httpGets] HTTPGet specifies the http request to perform. Exactly one of HTTPGet or TCPSocket must be specified.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  /// [tcpSockets] TCPSocket specifies an action involving a TCP port. Exactly one of HTTPGet or TCPSocket must be specified.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  const GetServiceTemplateContainerStartupProbe({
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
      'grpcs': pulumi.Input.mapInputValue<List<GetServiceTemplateContainerStartupProbeGrpc>, List<Map<String, dynamic>>>(grpcs, (value) => pulumi.Input.encodeList<GetServiceTemplateContainerStartupProbeGrpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpGets': pulumi.Input.mapInputValue<List<GetServiceTemplateContainerStartupProbeHttpGet>, List<Map<String, dynamic>>>(httpGets, (value) => pulumi.Input.encodeList<GetServiceTemplateContainerStartupProbeHttpGet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initialDelaySeconds': initialDelaySeconds,
      'periodSeconds': periodSeconds,
      'tcpSockets': pulumi.Input.mapInputValue<List<GetServiceTemplateContainerStartupProbeTcpSocket>, List<Map<String, dynamic>>>(tcpSockets, (value) => pulumi.Input.encodeList<GetServiceTemplateContainerStartupProbeTcpSocket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GetServiceTemplateContainerStartupProbe.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerStartupProbe(
      failureThreshold: pulumi.Input.fromValue(map['failureThreshold'] as int),
      grpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateContainerStartupProbeGrpc>(map['grpcs']!, (value) => GetServiceTemplateContainerStartupProbeGrpc.fromMap((value as Map).cast<String, dynamic>()))),
      httpGets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateContainerStartupProbeHttpGet>(map['httpGets']!, (value) => GetServiceTemplateContainerStartupProbeHttpGet.fromMap((value as Map).cast<String, dynamic>()))),
      initialDelaySeconds: pulumi.Input.fromValue(map['initialDelaySeconds'] as int),
      periodSeconds: pulumi.Input.fromValue(map['periodSeconds'] as int),
      tcpSockets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateContainerStartupProbeTcpSocket>(map['tcpSockets']!, (value) => GetServiceTemplateContainerStartupProbeTcpSocket.fromMap((value as Map).cast<String, dynamic>()))),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
    );
  }
}
