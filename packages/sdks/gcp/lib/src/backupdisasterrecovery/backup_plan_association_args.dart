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
    required pulumi.Output<String> backupPlan,
    required pulumi.Output<String> backupPlanAssociationId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> resource,
    required pulumi.Output<String> resourceType,
  }) :
      backupPlan = pulumi.Input.asInput<String>(backupPlan),
      backupPlanAssociationId = pulumi.Input.asInput<String>(backupPlanAssociationId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      resource = pulumi.Input.asInput<String>(resource),
      resourceType = pulumi.Input.asInput<String>(resourceType);

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
      backupPlan: pulumi.Output.create<String>(map['backupPlan'] as String),
      backupPlanAssociationId: pulumi.Output.create<String>(map['backupPlanAssociationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resource: pulumi.Output.create<String>(map['resource'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}

