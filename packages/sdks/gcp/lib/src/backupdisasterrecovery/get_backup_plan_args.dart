// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_backup_plan_get_backup_plan_args_doc}
/// Arguments for getBackupPlan.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_backup_plan_get_backup_plan_args_doc}
class GetBackupPlanArgs {
  final pulumi.Input<String> backupPlanId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupPlanArgs].
  /// [backupPlanId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBackupPlanArgs({
    required this.backupPlanId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlanId': backupPlanId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanArgs(
      backupPlanId: (map['backupPlanId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

