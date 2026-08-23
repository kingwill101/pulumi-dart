// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_container_readiness_probe_http_get.dart';

class GroupContainerReadinessProbe {
  /// Commands to be run to validate container readiness. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? execs;
  /// How many times to try the probe before restarting the container (liveness probe) or marking the container as unhealthy (readiness probe). Changing this forces a new resource to be created.
  final pulumi.Input<int>? failureThreshold;
  /// The definition of the httpGet for this container as documented in the `httpGet` block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupContainerReadinessProbeHttpGet>>? httpGets;
  /// Number of seconds after the container has started before liveness or readiness probes are initiated. Changing this forces a new resource to be created.
  final pulumi.Input<int>? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Changing this forces a new resource to be created.
  final pulumi.Input<int>? periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Changing this forces a new resource to be created.
  final pulumi.Input<int>? successThreshold;
  /// Number of seconds after which the probe times out. Changing this forces a new resource to be created.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [GroupContainerReadinessProbe].
  /// [execs] Commands to be run to validate container readiness. Changing this forces a new resource to be created.
  /// [failureThreshold] How many times to try the probe before restarting the container (liveness probe) or marking the container as unhealthy (readiness probe). Changing this forces a new resource to be created.
  /// [httpGets] The definition of the httpGet for this container as documented in the `httpGet` block below. Changing this forces a new resource to be created.
  /// [initialDelaySeconds] Number of seconds after the container has started before liveness or readiness probes are initiated. Changing this forces a new resource to be created.
  /// [periodSeconds] How often (in seconds) to perform the probe. Changing this forces a new resource to be created.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Changing this forces a new resource to be created.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Changing this forces a new resource to be created.
  const GroupContainerReadinessProbe({
    this.execs,
    this.failureThreshold,
    this.httpGets,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'execs': ?execs,
      'failureThreshold': ?failureThreshold,
      'httpGets': ?pulumi.Input.mapOptionalInputValue<List<GroupContainerReadinessProbeHttpGet>, List<Map<String, dynamic>>>(httpGets, (value) => pulumi.Input.encodeList<GroupContainerReadinessProbeHttpGet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory GroupContainerReadinessProbe.fromMap(Map<String, dynamic> map) {
    return GroupContainerReadinessProbe(
      execs: (() { final guardedValue = map['execs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpGets: (() { final guardedValue = map['httpGets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupContainerReadinessProbeHttpGet>(guardedValue, (value) => GroupContainerReadinessProbeHttpGet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
