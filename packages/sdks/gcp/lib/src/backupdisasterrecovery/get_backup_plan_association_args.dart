// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_backup_plan_association_get_backup_plan_association_args_doc}
/// Arguments for getBackupPlanAssociation.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_backup_plan_association_get_backup_plan_association_args_doc}
class GetBackupPlanAssociationArgs {
  /// The id of Backupplan association resource.
  ///
  /// - - -
  final pulumi.Input<String> backupPlanAssociationId;
  /// The location in which the Backupplan association resource belongs.
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupPlanAssociationArgs].
  /// [backupPlanAssociationId] The id of Backupplan association resource.
  /// [location] The location in which the Backupplan association resource belongs.
  /// [project] Optional.
  const GetBackupPlanAssociationArgs({
    required this.backupPlanAssociationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlanAssociationId': backupPlanAssociationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBackupPlanAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationArgs(
      backupPlanAssociationId: pulumi.Input.fromValue(map['backupPlanAssociationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
