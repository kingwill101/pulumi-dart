// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_upgrade_policy_policy.dart';

/// BareMetalClusterUpgradePolicy defines the cluster upgrade policy.
class BareMetalClusterUpgradePolicy {
  /// Specifies which upgrade policy to use.
  final pulumi.Input<BareMetalClusterUpgradePolicyPolicy>? policy;

  /// Creates a new [BareMetalClusterUpgradePolicy].
  /// [policy] Specifies which upgrade policy to use.
  BareMetalClusterUpgradePolicy({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterUpgradePolicyPolicy, String>(policy, (value) => value.value),
    };
  }

  factory BareMetalClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterUpgradePolicy(
      policy: map['policy'] == null ? null : (BareMetalClusterUpgradePolicyPolicy.fromValue(map['policy'] as String)).input(),
    );
  }
}

