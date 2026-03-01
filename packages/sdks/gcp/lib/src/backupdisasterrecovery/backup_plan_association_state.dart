// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_association_rules_config_info.dart';

/// Input properties used for looking up and filtering BackupPlanAssociation resources.
class BackupPlanAssociationState {
  /// The BP with which resource needs to be created
  /// Note:
  /// - A Backup Plan configured for 'compute.googleapis.com/Instance', can only protect instance type resources.
  /// - A Backup Plan configured for 'compute.googleapis.com/Disk' can be used to protect both standard Disks and Regional Disks resources.
  final pulumi.Input<String>? backupPlan;
  /// The id of backupplan association
  final pulumi.Input<String>? backupPlanAssociationId;
  /// The time when the instance was created
  final pulumi.Input<String>? createTime;
  /// Resource name of data source which will be used as storage location for backups taken
  final pulumi.Input<String>? dataSource;
  /// The point in time when the last successful backup was captured from the source
  final pulumi.Input<String>? lastSuccessfulBackupConsistencyTime;
  /// The location for the backupplan association
  final pulumi.Input<String>? location;
  /// The name of backup plan association resource created
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource for which BPA needs to be created
  final pulumi.Input<String>? resource;
  /// The resource type of workload on which backupplan is applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", and "compute.googleapis.com/RegionDisk"
  final pulumi.Input<String>? resourceType;
  /// Message for rules config info
  /// Structure is documented below.
  final pulumi.Input<List<BackupPlanAssociationRulesConfigInfo>>? rulesConfigInfos;
  /// The time when the instance was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BackupPlanAssociationState].
  /// [backupPlan] The BP with which resource needs to be created
  /// [backupPlanAssociationId] The id of backupplan association
  /// [createTime] The time when the instance was created
  /// [dataSource] Resource name of data source which will be used as storage location for backups taken
  /// [lastSuccessfulBackupConsistencyTime] The point in time when the last successful backup was captured from the source
  /// [location] The location for the backupplan association
  /// [name] The name of backup plan association resource created
  /// [project] The ID of the project in which the resource belongs.
  /// [resource] The resource for which BPA needs to be created
  /// [resourceType] The resource type of workload on which backupplan is applied.
  /// [rulesConfigInfos] Message for rules config info
  /// [updateTime] The time when the instance was updated.
  BackupPlanAssociationState({
    pulumi.Output<String>? backupPlan,
    pulumi.Output<String>? backupPlanAssociationId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataSource,
    pulumi.Output<String>? lastSuccessfulBackupConsistencyTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? resource,
    pulumi.Output<String>? resourceType,
    pulumi.Output<List<BackupPlanAssociationRulesConfigInfo>>? rulesConfigInfos,
    pulumi.Output<String>? updateTime,
  }) :
      backupPlan = pulumi.Input.asOptionalInput<String>(backupPlan),
      backupPlanAssociationId = pulumi.Input.asOptionalInput<String>(backupPlanAssociationId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataSource = pulumi.Input.asOptionalInput<String>(dataSource),
      lastSuccessfulBackupConsistencyTime = pulumi.Input.asOptionalInput<String>(lastSuccessfulBackupConsistencyTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      resource = pulumi.Input.asOptionalInput<String>(resource),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      rulesConfigInfos = pulumi.Input.asOptionalInput<List<BackupPlanAssociationRulesConfigInfo>>(rulesConfigInfos),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': ?backupPlan,
      'backupPlanAssociationId': ?backupPlanAssociationId,
      'createTime': ?createTime,
      'dataSource': ?dataSource,
      'lastSuccessfulBackupConsistencyTime': ?lastSuccessfulBackupConsistencyTime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resource': ?resource,
      'resourceType': ?resourceType,
      'rulesConfigInfos': ?pulumi.Input.mapOptionalInputValue<List<BackupPlanAssociationRulesConfigInfo>, List<Map<String, dynamic>>>(rulesConfigInfos, (value) => pulumi.Input.encodeList<BackupPlanAssociationRulesConfigInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory BackupPlanAssociationState.fromMap(Map<String, dynamic> map) {
    return BackupPlanAssociationState(
      backupPlan: map['backupPlan'] == null ? null : pulumi.Output.create<String>(map['backupPlan'] as String),
      backupPlanAssociationId: map['backupPlanAssociationId'] == null ? null : pulumi.Output.create<String>(map['backupPlanAssociationId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataSource: map['dataSource'] == null ? null : pulumi.Output.create<String>(map['dataSource'] as String),
      lastSuccessfulBackupConsistencyTime: map['lastSuccessfulBackupConsistencyTime'] == null ? null : pulumi.Output.create<String>(map['lastSuccessfulBackupConsistencyTime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resource: map['resource'] == null ? null : pulumi.Output.create<String>(map['resource'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      rulesConfigInfos: map['rulesConfigInfos'] == null ? null : pulumi.Output.create<List<BackupPlanAssociationRulesConfigInfo>>(pulumi.Input.decodeList<BackupPlanAssociationRulesConfigInfo>(map['rulesConfigInfos'], (value) => BackupPlanAssociationRulesConfigInfo.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

