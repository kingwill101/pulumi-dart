// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_item_response.dart';
import 'system_data_response.dart';

/// Impacted resource for an event.
class EventImpactedResourceResponse {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// Additional information.
  final pulumi.Input<List<KeyValueItemResponse>?>? info;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Impacted resource region name.
  final pulumi.Input<String> targetRegion;
  /// Identity for resource within Microsoft cloud.
  final pulumi.Input<String> targetResourceId;
  /// Resource type within Microsoft cloud.
  final pulumi.Input<String> targetResourceType;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [EventImpactedResourceResponse].
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [info] Additional information.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetRegion] Impacted resource region name.
  /// [targetResourceId] Identity for resource within Microsoft cloud.
  /// [targetResourceType] Resource type within Microsoft cloud.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const EventImpactedResourceResponse({
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
      'info': ?pulumi.Input.mapOptionalInputValue<List<KeyValueItemResponse>, List<Map<String, dynamic>>>(info, (value) => pulumi.Input.encodeList<KeyValueItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'targetRegion': targetRegion,
      'targetResourceId': targetResourceId,
      'targetResourceType': targetResourceType,
      'type': type,
    };
  }

  factory EventImpactedResourceResponse.fromMap(Map<String, dynamic> map) {
    return EventImpactedResourceResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      info: (() { final guardedValue = map['info']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeyValueItemResponse>(guardedValue, (value) => KeyValueItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      targetRegion: pulumi.Input.fromValue(map['targetRegion'] as String),
      targetResourceId: pulumi.Input.fromValue(map['targetResourceId'] as String),
      targetResourceType: pulumi.Input.fromValue(map['targetResourceType'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
