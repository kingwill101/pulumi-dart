// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule_actions_base_blob.dart';
import 'management_policy_rule_actions_snapshot.dart';
import 'management_policy_rule_actions_version.dart';

class ManagementPolicyRuleActions {
  /// A `baseBlob` block as documented below.
  final pulumi.Input<ManagementPolicyRuleActionsBaseBlob?>? baseBlob;
  /// A `snapshot` block as documented below.
  final pulumi.Input<ManagementPolicyRuleActionsSnapshot?>? snapshot;
  /// A `version` block as documented below.
  final pulumi.Input<ManagementPolicyRuleActionsVersion?>? version;

  /// Creates a new [ManagementPolicyRuleActions].
  /// [baseBlob] A `baseBlob` block as documented below.
  /// [snapshot] A `snapshot` block as documented below.
  /// [version] A `version` block as documented below.
  const ManagementPolicyRuleActions({
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
      baseBlob: (() { final guardedValue = map['baseBlob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicyRuleActionsBaseBlob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicyRuleActionsSnapshot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicyRuleActionsVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
