// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_snapshot_recycle_bin_policy_system_rule_standard_snapshot.dart';

class OrganizationSnapshotRecycleBinPolicySystemRule {
  /// (Required) The identifier for this object. Format specified above.
  final pulumi.Input<String> name;
  /// (Output)
  /// The rule config for standard snapshots.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSnapshotRecycleBinPolicySystemRuleStandardSnapshot>?>? standardSnapshots;

  /// Creates a new [OrganizationSnapshotRecycleBinPolicySystemRule].
  /// [name] (Required) The identifier for this object. Format specified above.
  /// [standardSnapshots] (Output)
  const OrganizationSnapshotRecycleBinPolicySystemRule({
    required this.name,
    this.standardSnapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'standardSnapshots': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSnapshotRecycleBinPolicySystemRuleStandardSnapshot>, List<Map<String, dynamic>>>(standardSnapshots, (value) => pulumi.Input.encodeList<OrganizationSnapshotRecycleBinPolicySystemRuleStandardSnapshot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrganizationSnapshotRecycleBinPolicySystemRule.fromMap(Map<String, dynamic> map) {
    return OrganizationSnapshotRecycleBinPolicySystemRule(
      name: pulumi.Input.fromValue(map['name'] as String),
      standardSnapshots: (() { final guardedValue = map['standardSnapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicySystemRuleStandardSnapshot>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicySystemRuleStandardSnapshot.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
