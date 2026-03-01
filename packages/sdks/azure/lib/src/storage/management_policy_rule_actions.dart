// ignore_for_file: unused_element, unnecessary_cast

import 'management_policy_rule_actions_base_blob.dart';
import 'management_policy_rule_actions_snapshot.dart';
import 'management_policy_rule_actions_version.dart';

class ManagementPolicyRuleActions {
  /// A `base_blob` block as documented below.
  final ManagementPolicyRuleActionsBaseBlob? baseBlob;
  /// A `snapshot` block as documented below.
  final ManagementPolicyRuleActionsSnapshot? snapshot;
  /// A `version` block as documented below.
  final ManagementPolicyRuleActionsVersion? version;

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
      'baseBlob': ?baseBlob == null ? null : baseBlob!.toMap(),
      'snapshot': ?snapshot == null ? null : snapshot!.toMap(),
      'version': ?version == null ? null : version!.toMap(),
    };
  }

  factory ManagementPolicyRuleActions.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleActions(
      baseBlob: map['baseBlob'] == null ? null : ManagementPolicyRuleActionsBaseBlob.fromMap((map['baseBlob'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : ManagementPolicyRuleActionsSnapshot.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : ManagementPolicyRuleActionsVersion.fromMap((map['version'] as Map).cast<String, dynamic>()),
    );
  }
}

