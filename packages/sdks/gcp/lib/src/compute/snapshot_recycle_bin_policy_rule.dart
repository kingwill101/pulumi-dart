// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_recycle_bin_policy_rule_standard_snapshots.dart';

class SnapshotRecycleBinPolicyRule {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> name;
  /// The rule config for standard snapshots.
  /// Structure is documented below.
  final pulumi.Input<SnapshotRecycleBinPolicyRuleStandardSnapshots?>? standardSnapshots;

  /// Creates a new [SnapshotRecycleBinPolicyRule].
  /// [name] The identifier for this object. Format specified above.
  /// [standardSnapshots] The rule config for standard snapshots.
  const SnapshotRecycleBinPolicyRule({
    required this.name,
    this.standardSnapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'standardSnapshots': ?pulumi.Input.mapOptionalInputValue<SnapshotRecycleBinPolicyRuleStandardSnapshots, Map<String, dynamic>>(standardSnapshots, (value) => value.toMap()),
    };
  }

  factory SnapshotRecycleBinPolicyRule.fromMap(Map<String, dynamic> map) {
    return SnapshotRecycleBinPolicyRule(
      name: pulumi.Input.fromValue(map['name'] as String),
      standardSnapshots: (() { final guardedValue = map['standardSnapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotRecycleBinPolicyRuleStandardSnapshots.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
