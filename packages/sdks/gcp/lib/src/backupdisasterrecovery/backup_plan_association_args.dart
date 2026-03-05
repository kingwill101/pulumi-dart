// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_backup_plan_association_backup_plan_association_args_doc}
/// The set of arguments for BackupPlanAssociation.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_backup_plan_association_backup_plan_association_args_doc}
class BackupPlanAssociationArgs {
  /// The BP with which resource needs to be created
  /// Note:
  /// - A Backup Plan configured for 'compute.googleapis.com/Instance', can only protect instance type resources.
  /// - A Backup Plan configured for 'compute.googleapis.com/Disk' can be used to protect both standard Disks and Regional Disks resources.
  final pulumi.Input<String> backupPlan;
  /// The id of backupplan association
  final pulumi.Input<String> backupPlanAssociationId;
  /// The location for the backupplan association
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource for which BPA needs to be created
  final pulumi.Input<String> resource;
  /// The resource type of workload on which backupplan is applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", and "compute.googleapis.com/RegionDisk"
  final pulumi.Input<String> resourceType;

  /// Creates a new [BackupPlanAssociationArgs].
  /// [backupPlan] The BP with which resource needs to be created
  /// [backupPlanAssociationId] The id of backupplan association
  /// [location] The location for the backupplan association
  /// [project] The ID of the project in which the resource belongs.
  /// [resource] The resource for which BPA needs to be created
  /// [resourceType] The resource type of workload on which backupplan is applied.
  BackupPlanAssociationArgs({
    required this.backupPlan,
    required this.backupPlanAssociationId,
    required this.location,
    this.project,
    required this.resource,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'backupPlanAssociationId': backupPlanAssociationId,
      'location': location,
      'project': ?project,
      'resource': resource,
      'resourceType': resourceType,
    };
  }

  factory BackupPlanAssociationArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanAssociationArgs(
      backupPlan: pulumi.Input.fromValue(map['backupPlan'] as String),
      backupPlanAssociationId: pulumi.Input.fromValue(map['backupPlanAssociationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

