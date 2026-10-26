// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_snapshot_recycle_bin_policy_rule.dart';
import 'organization_snapshot_recycle_bin_policy_system_rule.dart';

/// Input properties used for looking up and filtering OrganizationSnapshotRecycleBinPolicy resources.
class OrganizationSnapshotRecycleBinPolicyState {
  /// The organization ID for this request (e.g., "organizations/1234").
  final pulumi.Input<String?>? organization;
  /// The rules for the snapshot recycle bin policy. The key name is either 'default'
  /// or namespaced name of the tag value which can be in the format:
  /// {organization_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_number}/{tag_key_short_name}/{tag_value_short_name}. The default rule is
  /// applied if snapshots do not have any of these tags. The value is the rule for the key.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSnapshotRecycleBinPolicyRule>?>? rules;
  /// The system rules for snapshot recycle bin policy. Defines the default rule that applies if no customer-defined
  /// rule matches.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSnapshotRecycleBinPolicySystemRule>?>? systemRules;

  /// Creates a new [OrganizationSnapshotRecycleBinPolicyState].
  /// [organization] The organization ID for this request (e.g., "organizations/1234").
  /// [rules] The rules for the snapshot recycle bin policy. The key name is either 'default'
  /// [systemRules] The system rules for snapshot recycle bin policy. Defines the default rule that applies if no customer-defined
  const OrganizationSnapshotRecycleBinPolicyState({
    this.organization,
    this.rules,
    this.systemRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': ?organization,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSnapshotRecycleBinPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<OrganizationSnapshotRecycleBinPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systemRules': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSnapshotRecycleBinPolicySystemRule>, List<Map<String, dynamic>>>(systemRules, (value) => pulumi.Input.encodeList<OrganizationSnapshotRecycleBinPolicySystemRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrganizationSnapshotRecycleBinPolicyState.fromMap(Map<String, dynamic> map) {
    return OrganizationSnapshotRecycleBinPolicyState(
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicyRule>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      systemRules: (() { final guardedValue = map['systemRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicySystemRule>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicySystemRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
