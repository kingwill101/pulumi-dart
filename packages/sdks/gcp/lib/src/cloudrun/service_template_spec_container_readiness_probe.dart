// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_readiness_probe_grpc.dart';
import 'service_template_spec_container_readiness_probe_http_get.dart';

class ServiceTemplateSpecContainerReadinessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3.
  final pulumi.Input<int>? failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerReadinessProbeGrpc>? grpc;
  /// HttpGet specifies the http request to perform.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerReadinessProbeHttpGet>? httpGet;
  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds.
  final pulumi.Input<int>? periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed.
  /// Defaults to 2.
  final pulumi.Input<int>? successThreshold;
  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Must be smaller than period_seconds.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [ServiceTemplateSpecContainerReadinessProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpc] GRPC specifies an action involving a GRPC port.
  /// [httpGet] HttpGet specifies the http request to perform.
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  ServiceTemplateSpecContainerReadinessProbe({
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'grpc': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerReadinessProbeGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'httpGet': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerReadinessProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ServiceTemplateSpecContainerReadinessProbe.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerReadinessProbe(
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      grpc: (() { final guardedValue = map['grpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateSpecContainerReadinessProbeGrpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateSpecContainerReadinessProbeHttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

