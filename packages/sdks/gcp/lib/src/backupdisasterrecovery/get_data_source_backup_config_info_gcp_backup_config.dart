// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSourceBackupConfigInfoGcpBackupConfig {
  /// The name of the backup plan.
  final pulumi.Input<String> backupPlan;
  /// The name of the backup plan association.
  final pulumi.Input<String> backupPlanAssociation;
  /// The description of the backup plan.
  final pulumi.Input<String> backupPlanDescription;
  /// The names of the backup plan rules which point to this backupvault
  final pulumi.Input<List<String>> backupPlanRules;

  /// Creates a new [GetDataSourceBackupConfigInfoGcpBackupConfig].
  /// [backupPlan] The name of the backup plan.
  /// [backupPlanAssociation] The name of the backup plan association.
  /// [backupPlanDescription] The description of the backup plan.
  /// [backupPlanRules] The names of the backup plan rules which point to this backupvault
  GetDataSourceBackupConfigInfoGcpBackupConfig({
    required this.backupPlan,
    required this.backupPlanAssociation,
    required this.backupPlanDescription,
    required this.backupPlanRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'backupPlanAssociation': backupPlanAssociation,
      'backupPlanDescription': backupPlanDescription,
      'backupPlanRules': backupPlanRules,
    };
  }

  factory GetDataSourceBackupConfigInfoGcpBackupConfig.fromMap(Map<String, dynamic> map) {
    return GetDataSourceBackupConfigInfoGcpBackupConfig(
      backupPlan: (map['backupPlan'] as String).input(),
      backupPlanAssociation: (map['backupPlanAssociation'] as String).input(),
      backupPlanDescription: (map['backupPlanDescription'] as String).input(),
      backupPlanRules: ((map['backupPlanRules'] as List).cast<String>()).input(),
    );
  }
}

