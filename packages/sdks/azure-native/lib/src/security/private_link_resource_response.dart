// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// A private link resource.
class PrivateLinkResourceResponse {
  /// The private link resource group id.
  final String groupId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The private link resource required member names.
  final List<String> requiredMembers;
  /// The private link resource private link DNS zone name.
  final List<String>? requiredZoneNames;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [PrivateLinkResourceResponse].
  /// [groupId] The private link resource group id.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [requiredMembers] The private link resource required member names.
  /// [requiredZoneNames] The private link resource private link DNS zone name.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  PrivateLinkResourceResponse({
    required this.groupId,
    required this.id,
    required this.name,
    required this.requiredMembers,
    this.requiredZoneNames,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'id': id,
      'name': name,
      'requiredMembers': requiredMembers,
      'requiredZoneNames': ?requiredZoneNames,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory PrivateLinkResourceResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkResourceResponse(
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      requiredMembers: (map['requiredMembers'] as List).cast<String>(),
      requiredZoneNames: map['requiredZoneNames'] == null ? null : (map['requiredZoneNames'] as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

