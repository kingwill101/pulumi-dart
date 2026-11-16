// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_snapshot_recycle_bin_policy_rule_standard_snapshots.dart';

class OrganizationSnapshotRecycleBinPolicyRule {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> name;
  /// The rule config for standard snapshots.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshots?>? standardSnapshots;

  /// Creates a new [OrganizationSnapshotRecycleBinPolicyRule].
  /// [name] The identifier for this object. Format specified above.
  /// [standardSnapshots] The rule config for standard snapshots.
  const OrganizationSnapshotRecycleBinPolicyRule({
    required this.name,
    this.standardSnapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'standardSnapshots': ?pulumi.Input.mapOptionalInputValue<OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshots, Map<String, dynamic>>(standardSnapshots, (value) => value.toMap()),
    };
  }

  factory OrganizationSnapshotRecycleBinPolicyRule.fromMap(Map<String, dynamic> map) {
    return OrganizationSnapshotRecycleBinPolicyRule(
      name: pulumi.Input.fromValue(map['name'] as String),
      standardSnapshots: (() { final guardedValue = map['standardSnapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshots.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
