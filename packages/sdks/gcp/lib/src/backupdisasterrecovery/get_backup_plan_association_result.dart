// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_association_rules_config_info.dart';

/// Result data returned by getBackupPlanAssociation.
class GetBackupPlanAssociationResult {
  final String? backupPlan;
  final String? backupPlanAssociationId;
  final String? createTime;
  final String? dataSource;
  final String? deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  final String? project;
  final String? resource;
  final String? resourceType;
  final List<GetBackupPlanAssociationRulesConfigInfo>? rulesConfigInfos;
  final String? updateTime;

  /// Creates a new [GetBackupPlanAssociationResult].
  /// [backupPlan] Optional.
  /// [backupPlanAssociationId] Optional.
  /// [createTime] Optional.
  /// [dataSource] Optional.
  /// [deletionPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [resource] Optional.
  /// [resourceType] Optional.
  /// [rulesConfigInfos] Optional.
  /// [updateTime] Optional.
  const GetBackupPlanAssociationResult({
    this.backupPlan,
    this.backupPlanAssociationId,
    this.createTime,
    this.dataSource,
    this.deletionPolicy,
    this.id,
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
      'deletionPolicy': ?deletionPolicy,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resource': ?resource,
      'resourceType': ?resourceType,
      'rulesConfigInfos': ?(() { final guardedValue = rulesConfigInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackupPlanAssociationRulesConfigInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetBackupPlanAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationResult(
      backupPlan: (() { final guardedValue = map['backupPlan']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupPlanAssociationId: (() { final guardedValue = map['backupPlanAssociationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rulesConfigInfos: (() { final guardedValue = map['rulesConfigInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackupPlanAssociationRulesConfigInfo>(guardedValue, (value) => GetBackupPlanAssociationRulesConfigInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
