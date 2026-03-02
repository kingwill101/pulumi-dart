// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_feature_condition_response.dart';
import 'cluster_upgrade_gkeupgrade_state_response.dart';

/// GKEUpgradeFeatureState contains feature states for GKE clusters in the scope.
class ClusterUpgradeGKEUpgradeFeatureStateResponse {
  /// Current conditions of the feature.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeFeatureConditionResponse>> conditions;
  /// Upgrade state. It will eventually replace `state`.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeStateResponse>> upgradeState;

  /// Creates a new [ClusterUpgradeGKEUpgradeFeatureStateResponse].
  /// [conditions] Current conditions of the feature.
  /// [upgradeState] Upgrade state. It will eventually replace `state`.
  ClusterUpgradeGKEUpgradeFeatureStateResponse({
    required this.conditions,
    required this.upgradeState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<ClusterUpgradeGKEUpgradeFeatureConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeFeatureConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upgradeState': pulumi.Input.mapInputValue<List<ClusterUpgradeGKEUpgradeStateResponse>, List<Map<String, dynamic>>>(upgradeState, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeStateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterUpgradeGKEUpgradeFeatureStateResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeFeatureStateResponse(
      conditions: (pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeFeatureConditionResponse>(map['conditions'], (value) => ClusterUpgradeGKEUpgradeFeatureConditionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      upgradeState: (pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeStateResponse>(map['upgradeState'], (value) => ClusterUpgradeGKEUpgradeStateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

