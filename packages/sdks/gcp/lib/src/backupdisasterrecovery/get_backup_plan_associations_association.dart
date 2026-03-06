// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_associations_association_rules_config_info.dart';

class GetBackupPlanAssociationsAssociation {
  /// The backup plan to which the resource is attached.
  final pulumi.Input<String> backupPlan;
  final pulumi.Input<String> createTime;
  /// The resource name of data source which will be used as storage location for backups taken.
  final pulumi.Input<String> dataSource;
  /// The full name of the backup plan association resource.
  final pulumi.Input<String> name;
  /// The resource to which the backup plan is applied.
  final pulumi.Input<String> resource;
  /// A list containing information about the backup rules. Each object in the list contains:
  final pulumi.Input<List<GetBackupPlanAssociationsAssociationRulesConfigInfo>> rulesConfigInfos;

  /// Creates a new [GetBackupPlanAssociationsAssociation].
  /// [backupPlan] The backup plan to which the resource is attached.
  /// [createTime] Required.
  /// [dataSource] The resource name of data source which will be used as storage location for backups taken.
  /// [name] The full name of the backup plan association resource.
  /// [resource] The resource to which the backup plan is applied.
  /// [rulesConfigInfos] A list containing information about the backup rules. Each object in the list contains:
  const GetBackupPlanAssociationsAssociation({
    required this.backupPlan,
    required this.createTime,
    required this.dataSource,
    required this.name,
    required this.resource,
    required this.rulesConfigInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'createTime': createTime,
      'dataSource': dataSource,
      'name': name,
      'resource': resource,
      'rulesConfigInfos': pulumi.Input.mapInputValue<List<GetBackupPlanAssociationsAssociationRulesConfigInfo>, List<Map<String, dynamic>>>(rulesConfigInfos, (value) => pulumi.Input.encodeList<GetBackupPlanAssociationsAssociationRulesConfigInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBackupPlanAssociationsAssociation.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationsAssociation(
      backupPlan: pulumi.Input.fromValue(map['backupPlan'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataSource: pulumi.Input.fromValue(map['dataSource'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
      rulesConfigInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackupPlanAssociationsAssociationRulesConfigInfo>(map['rulesConfigInfos']!, (value) => GetBackupPlanAssociationsAssociationRulesConfigInfo.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

