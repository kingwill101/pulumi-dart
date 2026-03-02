// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule_actions_base_blob.dart';
import 'management_policy_rule_actions_snapshot.dart';
import 'management_policy_rule_actions_version.dart';

class ManagementPolicyRuleActions {
  /// A `base_blob` block as documented below.
  final pulumi.Input<ManagementPolicyRuleActionsBaseBlob>? baseBlob;
  /// A `snapshot` block as documented below.
  final pulumi.Input<ManagementPolicyRuleActionsSnapshot>? snapshot;
  /// A `version` block as documented below.
  final pulumi.Input<ManagementPolicyRuleActionsVersion>? version;

  /// Creates a new [ManagementPolicyRuleActions].
  /// [baseBlob] A `base_blob` block as documented below.
  /// [snapshot] A `snapshot` block as documented below.
  /// [version] A `version` block as documented below.
  ManagementPolicyRuleActions({
    this.baseBlob,
    this.snapshot,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseBlob': ?pulumi.Input.mapOptionalInputValue<ManagementPolicyRuleActionsBaseBlob, Map<String, dynamic>>(baseBlob, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<ManagementPolicyRuleActionsSnapshot, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
      'version': ?pulumi.Input.mapOptionalInputValue<ManagementPolicyRuleActionsVersion, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory ManagementPolicyRuleActions.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleActions(
      baseBlob: map['baseBlob'] == null ? null : (ManagementPolicyRuleActionsBaseBlob.fromMap((map['baseBlob']! as Map).cast<String, dynamic>())).input(),
      snapshot: map['snapshot'] == null ? null : (ManagementPolicyRuleActionsSnapshot.fromMap((map['snapshot']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (ManagementPolicyRuleActionsVersion.fromMap((map['version']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

