// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_recycle_bin_policy_rule.dart';
import 'snapshot_recycle_bin_policy_system_rule.dart';

/// Input properties used for looking up and filtering SnapshotRecycleBinPolicy resources.
class SnapshotRecycleBinPolicyState {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The rules for the snapshot recycle bin policy. The key name is either 'default'
  /// or namespaced name of the tag value which can be in the format:
  /// {organization_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_number}/{tag_key_short_name}/{tag_value_short_name}. The default rule is
  /// applied if snapshots do not have any of these tags. The value is the rule for the key.
  /// Structure is documented below.
  final pulumi.Input<List<SnapshotRecycleBinPolicyRule>?>? rules;
  /// The system rules for snapshot recycle bin policy. Defines the default rule that applies if no customer-defined
  /// rule matches.
  /// Structure is documented below.
  final pulumi.Input<List<SnapshotRecycleBinPolicySystemRule>?>? systemRules;

  /// Creates a new [SnapshotRecycleBinPolicyState].
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] The rules for the snapshot recycle bin policy. The key name is either 'default'
  /// [systemRules] The system rules for snapshot recycle bin policy. Defines the default rule that applies if no customer-defined
  const SnapshotRecycleBinPolicyState({
    this.project,
    this.rules,
    this.systemRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SnapshotRecycleBinPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SnapshotRecycleBinPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systemRules': ?pulumi.Input.mapOptionalInputValue<List<SnapshotRecycleBinPolicySystemRule>, List<Map<String, dynamic>>>(systemRules, (value) => pulumi.Input.encodeList<SnapshotRecycleBinPolicySystemRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SnapshotRecycleBinPolicyState.fromMap(Map<String, dynamic> map) {
    return SnapshotRecycleBinPolicyState(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SnapshotRecycleBinPolicyRule>(guardedValue, (value) => SnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      systemRules: (() { final guardedValue = map['systemRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SnapshotRecycleBinPolicySystemRule>(guardedValue, (value) => SnapshotRecycleBinPolicySystemRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
