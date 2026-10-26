// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_recycle_bin_policy_system_rule_standard_snapshot.dart';

class SnapshotRecycleBinPolicySystemRule {
  /// (Required) The identifier for this object. Format specified above.
  final pulumi.Input<String> name;
  /// (Output)
  /// The rule config for standard snapshots.
  /// Structure is documented below.
  final pulumi.Input<List<SnapshotRecycleBinPolicySystemRuleStandardSnapshot>?>? standardSnapshots;

  /// Creates a new [SnapshotRecycleBinPolicySystemRule].
  /// [name] (Required) The identifier for this object. Format specified above.
  /// [standardSnapshots] (Output)
  const SnapshotRecycleBinPolicySystemRule({
    required this.name,
    this.standardSnapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'standardSnapshots': ?pulumi.Input.mapOptionalInputValue<List<SnapshotRecycleBinPolicySystemRuleStandardSnapshot>, List<Map<String, dynamic>>>(standardSnapshots, (value) => pulumi.Input.encodeList<SnapshotRecycleBinPolicySystemRuleStandardSnapshot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SnapshotRecycleBinPolicySystemRule.fromMap(Map<String, dynamic> map) {
    return SnapshotRecycleBinPolicySystemRule(
      name: pulumi.Input.fromValue(map['name'] as String),
      standardSnapshots: (() { final guardedValue = map['standardSnapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SnapshotRecycleBinPolicySystemRuleStandardSnapshot>(guardedValue, (value) => SnapshotRecycleBinPolicySystemRuleStandardSnapshot.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
