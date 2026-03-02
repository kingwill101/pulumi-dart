// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalClusterUpgradePolicy defines the cluster upgrade policy.
class BareMetalClusterUpgradePolicyResponse {
  /// Specifies which upgrade policy to use.
  final pulumi.Input<String> policy;

  /// Creates a new [BareMetalClusterUpgradePolicyResponse].
  /// [policy] Specifies which upgrade policy to use.
  BareMetalClusterUpgradePolicyResponse({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory BareMetalClusterUpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterUpgradePolicyResponse(
      policy: (map['policy'] as String).input(),
    );
  }
}

