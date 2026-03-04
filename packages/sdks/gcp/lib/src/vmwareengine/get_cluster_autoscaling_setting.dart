// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_autoscaling_setting_autoscaling_policy.dart';

class GetClusterAutoscalingSetting {
  /// The map with autoscaling policies applied to the cluster.
  /// The key is the identifier of the policy.
  /// It must meet the following requirements:
  /// * Only contains 1-63 alphanumeric characters and hyphens
  /// * Begins with an alphabetical character
  /// * Ends with a non-hyphen character
  /// * Not formatted as a UUID
  /// * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// Currently the map must contain only one element
  /// that describes the autoscaling policy for compute nodes.
  final pulumi.Input<List<GetClusterAutoscalingSettingAutoscalingPolicy>>
  autoscalingPolicies;

  /// The minimum duration between consecutive autoscale operations.
  /// It starts once addition or removal of nodes is fully completed.
  /// Minimum cool down period is 30m.
  /// Cool down period must be in whole minutes (for example, 30m, 31m, 50m).
  /// Mandatory for successful addition of autoscaling settings in cluster.
  final pulumi.Input<String> coolDownPeriod;

  /// Maximum number of nodes of any type in a cluster.
  /// Mandatory for successful addition of autoscaling settings in cluster.
  final pulumi.Input<int> maxClusterNodeCount;

  /// Minimum number of nodes of any type in a cluster.
  /// Mandatory for successful addition of autoscaling settings in cluster.
  final pulumi.Input<int> minClusterNodeCount;

  /// Creates a new [GetClusterAutoscalingSetting].
  /// [autoscalingPolicies] The map with autoscaling policies applied to the cluster.
  /// [coolDownPeriod] The minimum duration between consecutive autoscale operations.
  /// [maxClusterNodeCount] Maximum number of nodes of any type in a cluster.
  /// [minClusterNodeCount] Minimum number of nodes of any type in a cluster.
  GetClusterAutoscalingSetting({
    required this.autoscalingPolicies,
    required this.coolDownPeriod,
    required this.maxClusterNodeCount,
    required this.minClusterNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicies':
          pulumi.Input.mapInputValue<
            List<GetClusterAutoscalingSettingAutoscalingPolicy>,
            List<Map<String, dynamic>>
          >(
            autoscalingPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterAutoscalingSettingAutoscalingPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'coolDownPeriod': coolDownPeriod,
      'maxClusterNodeCount': maxClusterNodeCount,
      'minClusterNodeCount': minClusterNodeCount,
    };
  }

  factory GetClusterAutoscalingSetting.fromMap(Map<String, dynamic> map) {
    return GetClusterAutoscalingSetting(
      autoscalingPolicies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetClusterAutoscalingSettingAutoscalingPolicy>(
          map['autoscalingPolicies']!,
          (value) => GetClusterAutoscalingSettingAutoscalingPolicy.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      coolDownPeriod: pulumi.Input.fromValue(map['coolDownPeriod'] as String),
      maxClusterNodeCount: pulumi.Input.fromValue(
        map['maxClusterNodeCount'] as int,
      ),
      minClusterNodeCount: pulumi.Input.fromValue(
        map['minClusterNodeCount'] as int,
      ),
    );
  }
}
