// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_item_response.dart';
import 'system_data_response.dart';

/// Impacted resource for an event.
class EventImpactedResourceResponse {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Additional information.
  final List<KeyValueItemResponse>? info;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Impacted resource region name.
  final String targetRegion;
  /// Identity for resource within Microsoft cloud.
  final String targetResourceId;
  /// Resource type within Microsoft cloud.
  final String targetResourceType;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [EventImpactedResourceResponse].
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [info] Additional information.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetRegion] Impacted resource region name.
  /// [targetResourceId] Identity for resource within Microsoft cloud.
  /// [targetResourceType] Resource type within Microsoft cloud.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  EventImpactedResourceResponse({
    required this.id,
    this.info,
    required this.name,
    required this.systemData,
    required this.targetRegion,
    required this.targetResourceId,
    required this.targetResourceType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'info': ?info == null ? null : pulumi.Input.encodeList<KeyValueItemResponse, Map<String, dynamic>>(info!, (value) => value.toMap()),
      'name': name,
      'systemData': systemData.toMap(),
      'targetRegion': targetRegion,
      'targetResourceId': targetResourceId,
      'targetResourceType': targetResourceType,
      'type': type,
    };
  }

  factory EventImpactedResourceResponse.fromMap(Map<String, dynamic> map) {
    return EventImpactedResourceResponse(
      id: map['id'] as String,
      info: map['info'] == null ? null : pulumi.Input.decodeList<KeyValueItemResponse>(map['info'], (value) => KeyValueItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      targetRegion: map['targetRegion'] as String,
      targetResourceId: map['targetResourceId'] as String,
      targetResourceType: map['targetResourceType'] as String,
      type: map['type'] as String,
    );
  }
}

