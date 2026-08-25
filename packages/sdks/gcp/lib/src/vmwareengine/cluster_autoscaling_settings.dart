// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_autoscaling_settings_autoscaling_policy.dart';

class ClusterAutoscalingSettings {
  /// The map with autoscaling policies applied to the cluster.
  /// The key is the identifier of the policy.
  /// It must meet the following requirements:
  /// * Only contains 1-63 alphanumeric characters and hyphens
  /// * Begins with an alphabetical character
  /// * Ends with a non-hyphen character
  /// * Not formatted as a UUID
  /// * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// Currently the map must contain only one element
  /// that describes the autoscaling policy for compute nodes.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterAutoscalingSettingsAutoscalingPolicy>> autoscalingPolicies;
  /// The minimum duration between consecutive autoscale operations.
  /// It starts once addition or removal of nodes is fully completed.
  /// Minimum cool down period is 30m.
  /// Cool down period must be in whole minutes (for example, 30m, 31m, 50m).
  /// Mandatory for successful addition of autoscaling settings in cluster.
  final pulumi.Input<String?>? coolDownPeriod;
  /// Maximum number of nodes of any type in a cluster.
  /// Mandatory for successful addition of autoscaling settings in cluster.
  final pulumi.Input<int?>? maxClusterNodeCount;
  /// Minimum number of nodes of any type in a cluster.
  /// Mandatory for successful addition of autoscaling settings in cluster.
  final pulumi.Input<int?>? minClusterNodeCount;

  /// Creates a new [ClusterAutoscalingSettings].
  /// [autoscalingPolicies] The map with autoscaling policies applied to the cluster.
  /// [coolDownPeriod] The minimum duration between consecutive autoscale operations.
  /// [maxClusterNodeCount] Maximum number of nodes of any type in a cluster.
  /// [minClusterNodeCount] Minimum number of nodes of any type in a cluster.
  const ClusterAutoscalingSettings({
    required this.autoscalingPolicies,
    this.coolDownPeriod,
    this.maxClusterNodeCount,
    this.minClusterNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicies': pulumi.Input.mapInputValue<List<ClusterAutoscalingSettingsAutoscalingPolicy>, List<Map<String, dynamic>>>(autoscalingPolicies, (value) => pulumi.Input.encodeList<ClusterAutoscalingSettingsAutoscalingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'coolDownPeriod': ?coolDownPeriod,
      'maxClusterNodeCount': ?maxClusterNodeCount,
      'minClusterNodeCount': ?minClusterNodeCount,
    };
  }

  factory ClusterAutoscalingSettings.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingSettings(
      autoscalingPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterAutoscalingSettingsAutoscalingPolicy>(map['autoscalingPolicies']!, (value) => ClusterAutoscalingSettingsAutoscalingPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      coolDownPeriod: (() { final guardedValue = map['coolDownPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxClusterNodeCount: (() { final guardedValue = map['maxClusterNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minClusterNodeCount: (() { final guardedValue = map['minClusterNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
