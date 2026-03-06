// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_startup_probe_grpc.dart';
import 'get_service_template_spec_container_startup_probe_http_get.dart';
import 'get_service_template_spec_container_startup_probe_tcp_socket.dart';

class GetServiceTemplateSpecContainerStartupProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int> failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  final pulumi.Input<List<GetServiceTemplateSpecContainerStartupProbeGrpc>> grpcs;
  /// HttpGet specifies the http request to perform.
  final pulumi.Input<List<GetServiceTemplateSpecContainerStartupProbeHttpGet>> httpGets;
  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 240.
  final pulumi.Input<int> initialDelaySeconds;
  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final pulumi.Input<int> periodSeconds;
  /// TcpSocket specifies an action involving a TCP port.
  final pulumi.Input<List<GetServiceTemplateSpecContainerStartupProbeTcpSocket>> tcpSockets;
  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than periodSeconds.
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [GetServiceTemplateSpecContainerStartupProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpcs] GRPC specifies an action involving a GRPC port.
  /// [httpGets] HttpGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [tcpSockets] TcpSocket specifies an action involving a TCP port.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  const GetServiceTemplateSpecContainerStartupProbe({
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
      'grpcs': pulumi.Input.mapInputValue<List<GetServiceTemplateSpecContainerStartupProbeGrpc>, List<Map<String, dynamic>>>(grpcs, (value) => pulumi.Input.encodeList<GetServiceTemplateSpecContainerStartupProbeGrpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpGets': pulumi.Input.mapInputValue<List<GetServiceTemplateSpecContainerStartupProbeHttpGet>, List<Map<String, dynamic>>>(httpGets, (value) => pulumi.Input.encodeList<GetServiceTemplateSpecContainerStartupProbeHttpGet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initialDelaySeconds': initialDelaySeconds,
      'periodSeconds': periodSeconds,
      'tcpSockets': pulumi.Input.mapInputValue<List<GetServiceTemplateSpecContainerStartupProbeTcpSocket>, List<Map<String, dynamic>>>(tcpSockets, (value) => pulumi.Input.encodeList<GetServiceTemplateSpecContainerStartupProbeTcpSocket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GetServiceTemplateSpecContainerStartupProbe.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerStartupProbe(
      failureThreshold: pulumi.Input.fromValue(map['failureThreshold'] as int),
      grpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSpecContainerStartupProbeGrpc>(map['grpcs']!, (value) => GetServiceTemplateSpecContainerStartupProbeGrpc.fromMap((value as Map).cast<String, dynamic>()))),
      httpGets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSpecContainerStartupProbeHttpGet>(map['httpGets']!, (value) => GetServiceTemplateSpecContainerStartupProbeHttpGet.fromMap((value as Map).cast<String, dynamic>()))),
      initialDelaySeconds: pulumi.Input.fromValue(map['initialDelaySeconds'] as int),
      periodSeconds: pulumi.Input.fromValue(map['periodSeconds'] as int),
      tcpSockets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSpecContainerStartupProbeTcpSocket>(map['tcpSockets']!, (value) => GetServiceTemplateSpecContainerStartupProbeTcpSocket.fromMap((value as Map).cast<String, dynamic>()))),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
    );
  }
}

