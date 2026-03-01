// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_postgresql_flexible_server_default_retention_rule_life_cycle.dart';

class BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule {
  /// A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  final List<BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycle> lifeCycles;

  /// Creates a new [BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule].
  /// [lifeCycles] A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule({
    required this.lifeCycles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifeCycles': pulumi.Input.encodeList<BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycle, Map<String, dynamic>>(lifeCycles, (value) => value.toMap()),
    };
  }

  factory BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule(
      lifeCycles: pulumi.Input.decodeList<BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycle>(map['lifeCycles'], (value) => BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycle.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

