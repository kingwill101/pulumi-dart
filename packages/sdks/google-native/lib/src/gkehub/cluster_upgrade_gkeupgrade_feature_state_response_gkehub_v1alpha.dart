// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_feature_condition_response_gkehub_v1alpha.dart';
import 'cluster_upgrade_gkeupgrade_state_response_gkehub_v1alpha.dart';

/// GKEUpgradeFeatureState contains feature states for GKE clusters in the scope.
class ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1alpha {
  /// Current conditions of the feature.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1alpha>> conditions;
  /// Upgrade state. It will eventually replace `state`.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha>> upgradeState;

  /// Creates a new [ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1alpha].
  /// [conditions] Current conditions of the feature.
  /// [upgradeState] Upgrade state. It will eventually replace `state`.
  const ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1alpha({
    required this.conditions,
    required this.upgradeState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1alpha>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upgradeState': pulumi.Input.mapInputValue<List<ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha>, List<Map<String, dynamic>>>(upgradeState, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1alpha(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1alpha>(map['conditions']!, (value) => ClusterUpgradeGKEUpgradeFeatureConditionResponseGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>()))),
      upgradeState: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha>(map['upgradeState']!, (value) => ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

