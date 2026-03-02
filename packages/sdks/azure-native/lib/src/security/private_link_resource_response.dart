// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';

/// A private link resource.
class PrivateLinkResourceResponse {
  /// The private link resource group id.
  final pulumi.Input<String> groupId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// The private link resource required member names.
  final pulumi.Input<List<String>> requiredMembers;
  /// The private link resource private link DNS zone name.
  final pulumi.Input<List<String>>? requiredZoneNames;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

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
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateLinkResourceResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkResourceResponse(
      groupId: (map['groupId'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      requiredMembers: ((map['requiredMembers'] as List).cast<String>()).input(),
      requiredZoneNames: map['requiredZoneNames'] == null ? null : ((map['requiredZoneNames'] as List).cast<String>()).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

