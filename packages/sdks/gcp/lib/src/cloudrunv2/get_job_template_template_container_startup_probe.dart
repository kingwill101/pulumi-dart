// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_template_template_container_startup_probe_grpc.dart';
import 'get_job_template_template_container_startup_probe_http_get.dart';
import 'get_job_template_template_container_startup_probe_tcp_socket.dart';

class GetJobTemplateTemplateContainerStartupProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int> failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  final pulumi.Input<List<GetJobTemplateTemplateContainerStartupProbeGrpc>> grpcs;
  /// HttpGet specifies the http request to perform.
  final pulumi.Input<List<GetJobTemplateTemplateContainerStartupProbeHttpGet>> httpGets;
  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 240.
  final pulumi.Input<int> initialDelaySeconds;
  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final pulumi.Input<int> periodSeconds;
  /// TcpSocket specifies an action involving a TCP port.
  final pulumi.Input<List<GetJobTemplateTemplateContainerStartupProbeTcpSocket>> tcpSockets;
  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than periodSeconds.
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [GetJobTemplateTemplateContainerStartupProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpcs] GRPC specifies an action involving a GRPC port.
  /// [httpGets] HttpGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [tcpSockets] TcpSocket specifies an action involving a TCP port.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  GetJobTemplateTemplateContainerStartupProbe({
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
      'grpcs': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerStartupProbeGrpc>, List<Map<String, dynamic>>>(grpcs, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerStartupProbeGrpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpGets': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerStartupProbeHttpGet>, List<Map<String, dynamic>>>(httpGets, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerStartupProbeHttpGet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initialDelaySeconds': initialDelaySeconds,
      'periodSeconds': periodSeconds,
      'tcpSockets': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerStartupProbeTcpSocket>, List<Map<String, dynamic>>>(tcpSockets, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerStartupProbeTcpSocket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GetJobTemplateTemplateContainerStartupProbe.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerStartupProbe(
      failureThreshold: pulumi.Input.fromValue(map['failureThreshold'] as int),
      grpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateContainerStartupProbeGrpc>(map['grpcs']!, (value) => GetJobTemplateTemplateContainerStartupProbeGrpc.fromMap((value as Map).cast<String, dynamic>()))),
      httpGets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateContainerStartupProbeHttpGet>(map['httpGets']!, (value) => GetJobTemplateTemplateContainerStartupProbeHttpGet.fromMap((value as Map).cast<String, dynamic>()))),
      initialDelaySeconds: pulumi.Input.fromValue(map['initialDelaySeconds'] as int),
      periodSeconds: pulumi.Input.fromValue(map['periodSeconds'] as int),
      tcpSockets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateContainerStartupProbeTcpSocket>(map['tcpSockets']!, (value) => GetJobTemplateTemplateContainerStartupProbeTcpSocket.fromMap((value as Map).cast<String, dynamic>()))),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
    );
  }
}

