// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_liveness_probe_grpc.dart';
import 'get_service_template_spec_container_liveness_probe_http_get.dart';

class GetServiceTemplateSpecContainerLivenessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final pulumi.Input<int> failureThreshold;

  /// GRPC specifies an action involving a GRPC port.
  final pulumi.Input<List<GetServiceTemplateSpecContainerLivenessProbeGrpc>>
  grpcs;

  /// HttpGet specifies the http request to perform.
  final pulumi.Input<List<GetServiceTemplateSpecContainerLivenessProbeHttpGet>>
  httpGets;

  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 3600.
  final pulumi.Input<int> initialDelaySeconds;

  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 3600.
  final pulumi.Input<int> periodSeconds;

  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than period_seconds.
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [GetServiceTemplateSpecContainerLivenessProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpcs] GRPC specifies an action involving a GRPC port.
  /// [httpGets] HttpGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  GetServiceTemplateSpecContainerLivenessProbe({
    required this.failureThreshold,
    required this.grpcs,
    required this.httpGets,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': failureThreshold,
      'grpcs':
          pulumi.Input.mapInputValue<
            List<GetServiceTemplateSpecContainerLivenessProbeGrpc>,
            List<Map<String, dynamic>>
          >(
            grpcs,
            (value) =>
                pulumi.Input.encodeList<
                  GetServiceTemplateSpecContainerLivenessProbeGrpc,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'httpGets':
          pulumi.Input.mapInputValue<
            List<GetServiceTemplateSpecContainerLivenessProbeHttpGet>,
            List<Map<String, dynamic>>
          >(
            httpGets,
            (value) =>
                pulumi.Input.encodeList<
                  GetServiceTemplateSpecContainerLivenessProbeHttpGet,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'initialDelaySeconds': initialDelaySeconds,
      'periodSeconds': periodSeconds,
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GetServiceTemplateSpecContainerLivenessProbe.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceTemplateSpecContainerLivenessProbe(
      failureThreshold: pulumi.Input.fromValue(map['failureThreshold'] as int),
      grpcs: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetServiceTemplateSpecContainerLivenessProbeGrpc>(
          map['grpcs']!,
          (value) => GetServiceTemplateSpecContainerLivenessProbeGrpc.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      httpGets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetServiceTemplateSpecContainerLivenessProbeHttpGet
        >(
          map['httpGets']!,
          (value) =>
              GetServiceTemplateSpecContainerLivenessProbeHttpGet.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      initialDelaySeconds: pulumi.Input.fromValue(
        map['initialDelaySeconds'] as int,
      ),
      periodSeconds: pulumi.Input.fromValue(map['periodSeconds'] as int),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
    );
  }
}
