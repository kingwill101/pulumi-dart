// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_mysql_flexible_server_default_retention_rule_life_cycle.dart';

class BackupPolicyMysqlFlexibleServerDefaultRetentionRule {
  /// A `lifeCycle` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle>> lifeCycles;

  /// Creates a new [BackupPolicyMysqlFlexibleServerDefaultRetentionRule].
  /// [lifeCycles] A `lifeCycle` block as defined below. Changing this forces a new resource to be created.
  const BackupPolicyMysqlFlexibleServerDefaultRetentionRule({
    required this.lifeCycles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifeCycles': pulumi.Input.mapInputValue<List<BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle>, List<Map<String, dynamic>>>(lifeCycles, (value) => pulumi.Input.encodeList<BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackupPolicyMysqlFlexibleServerDefaultRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyMysqlFlexibleServerDefaultRetentionRule(
      lifeCycles: pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle>(map['lifeCycles']!, (value) => BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
