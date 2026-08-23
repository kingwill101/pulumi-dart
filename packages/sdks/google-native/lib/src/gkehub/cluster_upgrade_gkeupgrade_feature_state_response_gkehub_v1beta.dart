// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_feature_condition_response_gkehub_v1beta.dart';
import 'cluster_upgrade_gkeupgrade_state_response_gkehub_v1beta.dart';

/// GKEUpgradeFeatureState contains feature states for GKE clusters in the scope.
class ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1beta {
  /// Current conditions of the feature.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1beta>> conditions;
  /// Upgrade state. It will eventually replace `state`.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta>> upgradeState;

  /// Creates a new [ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1beta].
  /// [conditions] Current conditions of the feature.
  /// [upgradeState] Upgrade state. It will eventually replace `state`.
  const ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1beta({
    required this.conditions,
    required this.upgradeState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1beta>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upgradeState': pulumi.Input.mapInputValue<List<ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta>, List<Map<String, dynamic>>>(upgradeState, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1beta(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1beta>(map['conditions']!, (value) => ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1beta.fromMap((value as Map).cast<String, dynamic>()))),
      upgradeState: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta>(map['upgradeState']!, (value) => ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
