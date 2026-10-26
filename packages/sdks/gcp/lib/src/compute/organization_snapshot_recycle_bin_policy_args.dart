// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_snapshot_recycle_bin_policy_rule.dart';

/// {@template pulumi_compute_organization_snapshot_recycle_bin_policy_organization_snapshot_recycle_bin_policy_args_doc}
/// The set of arguments for OrganizationSnapshotRecycleBinPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_organization_snapshot_recycle_bin_policy_organization_snapshot_recycle_bin_policy_args_doc}
class OrganizationSnapshotRecycleBinPolicyArgs {
  /// The organization ID for this request (e.g., "organizations/1234").
  final pulumi.Input<String> organization;
  /// The rules for the snapshot recycle bin policy. The key name is either 'default'
  /// or namespaced name of the tag value which can be in the format:
  /// {organization_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_number}/{tag_key_short_name}/{tag_value_short_name}. The default rule is
  /// applied if snapshots do not have any of these tags. The value is the rule for the key.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSnapshotRecycleBinPolicyRule>?>? rules;

  /// Creates a new [OrganizationSnapshotRecycleBinPolicyArgs].
  /// [organization] The organization ID for this request (e.g., "organizations/1234").
  /// [rules] The rules for the snapshot recycle bin policy. The key name is either 'default'
  const OrganizationSnapshotRecycleBinPolicyArgs({
    required this.organization,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': organization,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSnapshotRecycleBinPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<OrganizationSnapshotRecycleBinPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrganizationSnapshotRecycleBinPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSnapshotRecycleBinPolicyArgs(
      organization: pulumi.Input.fromValue(map['organization'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicyRule>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
