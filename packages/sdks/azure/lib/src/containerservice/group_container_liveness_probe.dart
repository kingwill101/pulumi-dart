// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_container_liveness_probe_http_get.dart';

class GroupContainerLivenessProbe {
  /// Commands to be run to validate container readiness. Changing this forces a new resource to be created.
  final List<String>? execs;
  /// How many times to try the probe before restarting the container (liveness probe) or marking the container as unhealthy (readiness probe). Changing this forces a new resource to be created.
  final int? failureThreshold;
  /// The definition of the http_get for this container as documented in the `http_get` block below. Changing this forces a new resource to be created.
  final List<GroupContainerLivenessProbeHttpGet>? httpGets;
  /// Number of seconds after the container has started before liveness or readiness probes are initiated. Changing this forces a new resource to be created.
  final int? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Changing this forces a new resource to be created.
  final int? periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Changing this forces a new resource to be created.
  final int? successThreshold;
  /// Number of seconds after which the probe times out. Changing this forces a new resource to be created.
  final int? timeoutSeconds;

  /// Creates a new [GroupContainerLivenessProbe].
  /// [execs] Commands to be run to validate container readiness. Changing this forces a new resource to be created.
  /// [failureThreshold] How many times to try the probe before restarting the container (liveness probe) or marking the container as unhealthy (readiness probe). Changing this forces a new resource to be created.
  /// [httpGets] The definition of the http_get for this container as documented in the `http_get` block below. Changing this forces a new resource to be created.
  /// [initialDelaySeconds] Number of seconds after the container has started before liveness or readiness probes are initiated. Changing this forces a new resource to be created.
  /// [periodSeconds] How often (in seconds) to perform the probe. Changing this forces a new resource to be created.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Changing this forces a new resource to be created.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Changing this forces a new resource to be created.
  GroupContainerLivenessProbe({
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
      'httpGets': ?httpGets == null ? null : pulumi.Input.encodeList<GroupContainerLivenessProbeHttpGet, Map<String, dynamic>>(httpGets!, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory GroupContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return GroupContainerLivenessProbe(
      execs: map['execs'] == null ? null : (map['execs'] as List).cast<String>(),
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpGets: map['httpGets'] == null ? null : pulumi.Input.decodeList<GroupContainerLivenessProbeHttpGet>(map['httpGets'], (value) => GroupContainerLivenessProbeHttpGet.fromMap((value as Map).cast<String, dynamic>())),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

