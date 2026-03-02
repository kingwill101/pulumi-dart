// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_response.dart';
import 'cluster_upgrade_post_conditions_response.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverrideResponse {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final pulumi.Input<ClusterUpgradePostConditionsResponse> postConditions;
  /// Which upgrade to override. Required.
  final pulumi.Input<ClusterUpgradeGKEUpgradeResponse> upgrade;

  /// Creates a new [ClusterUpgradeGKEUpgradeOverrideResponse].
  /// [postConditions] Post conditions to override for the specified upgrade (name + version). Required.
  /// [upgrade] Which upgrade to override. Required.
  ClusterUpgradeGKEUpgradeOverrideResponse({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postConditions': pulumi.Input.mapInputValue<ClusterUpgradePostConditionsResponse, Map<String, dynamic>>(postConditions, (value) => value.toMap()),
      'upgrade': pulumi.Input.mapInputValue<ClusterUpgradeGKEUpgradeResponse, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
    };
  }

  factory ClusterUpgradeGKEUpgradeOverrideResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverrideResponse(
      postConditions: (ClusterUpgradePostConditionsResponse.fromMap((map['postConditions'] as Map).cast<String, dynamic>())).input(),
      upgrade: (ClusterUpgradeGKEUpgradeResponse.fromMap((map['upgrade'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

