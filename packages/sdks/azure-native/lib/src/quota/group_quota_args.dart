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
    pulumi.Output<String>? groupQuotaName,
    required pulumi.Output<String> managementGroupId,
    pulumi.Output<GroupQuotasEntityProperties>? properties,
  }) :
      groupQuotaName = pulumi.Input.asOptionalInput<String>(groupQuotaName),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      properties = pulumi.Input.asOptionalInput<GroupQuotasEntityProperties>(properties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupQuotaName': ?groupQuotaName,
      'managementGroupId': managementGroupId,
      'properties': ?pulumi.Input.mapOptionalInputValue<GroupQuotasEntityProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory GroupQuotaArgs.fromMap(Map<String, dynamic> map) {
    return GroupQuotaArgs(
      groupQuotaName: map['groupQuotaName'] == null ? null : pulumi.Output.create<String>(map['groupQuotaName'] as String),
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<GroupQuotasEntityProperties>(GroupQuotasEntityProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
    );
  }
}

