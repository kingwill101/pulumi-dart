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
  final pulumi.Input<String>? project;

  /// The resource type of the workload. For example, sqladmin.googleapis.com/Instance or compute.googleapis.com/Instance. `resource_type` is deprecated and will be removed in a future major release.
  /// - - -
  final pulumi.Input<String>? resourceType;

  /// Creates a new [GetBackupPlanAssociationsArgs].
  /// [location] The location where the Backup Plan Association resources reside.
  /// [project] The project in which the resource belongs. If it
  /// [resourceType] The resource type of the workload. For example, sqladmin.googleapis.com/Instance or compute.googleapis.com/Instance. `resource_type` is deprecated and will be removed in a future major release.
  GetBackupPlanAssociationsArgs({
    required this.location,
    this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'resourceType': ?resourceType,
    };
  }

  factory GetBackupPlanAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
