// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container_readiness_probe_grpc.dart';
import 'get_service_template_container_readiness_probe_http_get.dart';

class GetServiceTemplateContainerReadinessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3.
  final pulumi.Input<int> failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  final pulumi.Input<List<GetServiceTemplateContainerReadinessProbeGrpc>> grpcs;
  /// HttpGet specifies the http request to perform.
  final pulumi.Input<List<GetServiceTemplateContainerReadinessProbeHttpGet>> httpGets;
  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds.
  final pulumi.Input<int> periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed.
  /// Defaults to 2.
  final pulumi.Input<int> successThreshold;
  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Must be smaller than period_seconds.
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [GetServiceTemplateContainerReadinessProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpcs] GRPC specifies an action involving a GRPC port.
  /// [httpGets] HttpGet specifies the http request to perform.
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  const GetServiceTemplateContainerReadinessProbe({
    required this.failureThreshold,
    required this.grpcs,
    required this.httpGets,
    required this.periodSeconds,
    required this.successThreshold,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': failureThreshold,
      'grpcs': pulumi.Input.mapInputValue<List<GetServiceTemplateContainerReadinessProbeGrpc>, List<Map<String, dynamic>>>(grpcs, (value) => pulumi.Input.encodeList<GetServiceTemplateContainerReadinessProbeGrpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpGets': pulumi.Input.mapInputValue<List<GetServiceTemplateContainerReadinessProbeHttpGet>, List<Map<String, dynamic>>>(httpGets, (value) => pulumi.Input.encodeList<GetServiceTemplateContainerReadinessProbeHttpGet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'periodSeconds': periodSeconds,
      'successThreshold': successThreshold,
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GetServiceTemplateContainerReadinessProbe.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerReadinessProbe(
      failureThreshold: pulumi.Input.fromValue((map['failureThreshold'] as num).toInt()),
      grpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateContainerReadinessProbeGrpc>(map['grpcs']!, (value) => GetServiceTemplateContainerReadinessProbeGrpc.fromMap((value as Map).cast<String, dynamic>()))),
      httpGets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateContainerReadinessProbeHttpGet>(map['httpGets']!, (value) => GetServiceTemplateContainerReadinessProbeHttpGet.fromMap((value as Map).cast<String, dynamic>()))),
      periodSeconds: pulumi.Input.fromValue((map['periodSeconds'] as num).toInt()),
      successThreshold: pulumi.Input.fromValue((map['successThreshold'] as num).toInt()),
      timeoutSeconds: pulumi.Input.fromValue((map['timeoutSeconds'] as num).toInt()),
    );
  }
}
