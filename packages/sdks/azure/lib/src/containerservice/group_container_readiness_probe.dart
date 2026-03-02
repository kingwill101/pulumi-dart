// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_container_readiness_probe_http_get.dart';

class GroupContainerReadinessProbe {
  /// Commands to be run to validate container readiness. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? execs;
  /// How many times to try the probe before restarting the container (liveness probe) or marking the container as unhealthy (readiness probe). Changing this forces a new resource to be created.
  final pulumi.Input<int>? failureThreshold;
  /// The definition of the http_get for this container as documented in the `http_get` block below. Changing this forces a new resource to be created.
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
  /// [httpGets] The definition of the http_get for this container as documented in the `http_get` block below. Changing this forces a new resource to be created.
  /// [initialDelaySeconds] Number of seconds after the container has started before liveness or readiness probes are initiated. Changing this forces a new resource to be created.
  /// [periodSeconds] How often (in seconds) to perform the probe. Changing this forces a new resource to be created.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Changing this forces a new resource to be created.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Changing this forces a new resource to be created.
  GroupContainerReadinessProbe({
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
      execs: map['execs'] == null ? null : ((map['execs']! as List).cast<String>()).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      httpGets: map['httpGets'] == null ? null : (pulumi.Input.decodeList<GroupContainerReadinessProbeHttpGet>(map['httpGets']!, (value) => GroupContainerReadinessProbeHttpGet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as int).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

