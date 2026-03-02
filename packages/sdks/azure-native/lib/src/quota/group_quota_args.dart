// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_quotas_entity_properties.dart';

/// {@template pulumi_quota_group_quota_args_doc}
/// The set of arguments for GroupQuota.
/// {@endtemplate}
/// {@macro pulumi_quota_group_quota_args_doc}
class GroupQuotaArgs {
  /// The GroupQuota name. The name should be unique for the provided context tenantId/MgId.
  final pulumi.Input<String>? groupQuotaName;
  /// Management Group Id.
  final pulumi.Input<String> managementGroupId;
  final pulumi.Input<GroupQuotasEntityProperties>? properties;

  /// Creates a new [GroupQuotaArgs].
  /// [groupQuotaName] The GroupQuota name. The name should be unique for the provided context tenantId/MgId.
  /// [managementGroupId] Management Group Id.
  /// [properties] Optional.
  GroupQuotaArgs({
    this.groupQuotaName,
    required this.managementGroupId,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupQuotaName': ?groupQuotaName,
      'managementGroupId': managementGroupId,
      'properties': ?pulumi.Input.mapOptionalInputValue<GroupQuotasEntityProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory GroupQuotaArgs.fromMap(Map<String, dynamic> map) {
    return GroupQuotaArgs(
      groupQuotaName: map['groupQuotaName'] == null ? null : (map['groupQuotaName'] as String).input(),
      managementGroupId: (map['managementGroupId'] as String).input(),
      properties: map['properties'] == null ? null : (GroupQuotasEntityProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

