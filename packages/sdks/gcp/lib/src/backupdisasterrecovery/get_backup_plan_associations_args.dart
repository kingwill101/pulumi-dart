// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_backup_plan_associations_get_backup_plan_associations_args_doc}
/// Arguments for getBackupPlanAssociations.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_backup_plan_associations_get_backup_plan_associations_args_doc}
class GetBackupPlanAssociationsArgs {
  /// The location where the Backup Plan Association resources reside.
  final pulumi.Input<String> location;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetBackupPlanAssociationsArgs].
  /// [location] The location where the Backup Plan Association resources reside.
  /// [project] The project in which the resource belongs. If it
  const GetBackupPlanAssociationsArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
    };
  }

  factory GetBackupPlanAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
