// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_recycle_bin_policy_rule.dart';

/// {@template pulumi_compute_snapshot_recycle_bin_policy_snapshot_recycle_bin_policy_args_doc}
/// The set of arguments for SnapshotRecycleBinPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_snapshot_recycle_bin_policy_snapshot_recycle_bin_policy_args_doc}
class SnapshotRecycleBinPolicyArgs {
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

  /// Creates a new [SnapshotRecycleBinPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] The rules for the snapshot recycle bin policy. The key name is either 'default'
  const SnapshotRecycleBinPolicyArgs({
    this.project,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SnapshotRecycleBinPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SnapshotRecycleBinPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SnapshotRecycleBinPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotRecycleBinPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SnapshotRecycleBinPolicyRule>(guardedValue, (value) => SnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
