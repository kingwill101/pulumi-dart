// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterUpgradePolicy {
  /// Specifies which upgrade policy to use.
  /// Possible values are: `SERIAL`, `CONCURRENT`.
  final pulumi.Input<String>? policy;

  /// Creates a new [BareMetalClusterUpgradePolicy].
  /// [policy] Specifies which upgrade policy to use.
  BareMetalClusterUpgradePolicy({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory BareMetalClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterUpgradePolicy(
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
    );
  }
}

