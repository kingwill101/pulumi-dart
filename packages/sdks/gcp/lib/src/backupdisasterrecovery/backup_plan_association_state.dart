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
  final pulumi.Input<List<BackupPlanAssociationRulesConfigInfo>>?
  rulesConfigInfos;

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
    this.backupPlan,
    this.backupPlanAssociationId,
    this.createTime,
    this.dataSource,
    this.lastSuccessfulBackupConsistencyTime,
    this.location,
    this.name,
    this.project,
    this.resource,
    this.resourceType,
    this.rulesConfigInfos,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': ?backupPlan,
      'backupPlanAssociationId': ?backupPlanAssociationId,
      'createTime': ?createTime,
      'dataSource': ?dataSource,
      'lastSuccessfulBackupConsistencyTime':
          ?lastSuccessfulBackupConsistencyTime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resource': ?resource,
      'resourceType': ?resourceType,
      'rulesConfigInfos':
          ?pulumi.Input.mapOptionalInputValue<
            List<BackupPlanAssociationRulesConfigInfo>,
            List<Map<String, dynamic>>
          >(
            rulesConfigInfos,
            (value) =>
                pulumi.Input.encodeList<
                  BackupPlanAssociationRulesConfigInfo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'updateTime': ?updateTime,
    };
  }

  factory BackupPlanAssociationState.fromMap(Map<String, dynamic> map) {
    return BackupPlanAssociationState(
      backupPlan: (() {
        final guardedValue = map['backupPlan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupPlanAssociationId: (() {
        final guardedValue = map['backupPlanAssociationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSource: (() {
        final guardedValue = map['dataSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastSuccessfulBackupConsistencyTime: (() {
        final guardedValue = map['lastSuccessfulBackupConsistencyTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resource: (() {
        final guardedValue = map['resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rulesConfigInfos: (() {
        final guardedValue = map['rulesConfigInfos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BackupPlanAssociationRulesConfigInfo>(
            guardedValue,
            (value) => BackupPlanAssociationRulesConfigInfo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
