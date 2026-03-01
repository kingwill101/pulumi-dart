// ignore_for_file: unused_element, unnecessary_cast

import 'auto_scale_vcore_sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAutoScaleVCore.
class GetAutoScaleVCoreResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The maximum capacity of an auto scale v-core resource.
  final int? capacityLimit;
  /// The object ID of the capacity resource associated with the auto scale v-core resource.
  final String? capacityObjectId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The current deployment state of an auto scale v-core resource. The provisioningState is to indicate states for resource provisioning.
  final String provisioningState;
  /// The SKU of the auto scale v-core resource.
  final AutoScaleVCoreSkuResponse sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAutoScaleVCoreResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capacityLimit] The maximum capacity of an auto scale v-core resource.
  /// [capacityObjectId] The object ID of the capacity resource associated with the auto scale v-core resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The current deployment state of an auto scale v-core resource. The provisioningState is to indicate states for resource provisioning.
  /// [sku] The SKU of the auto scale v-core resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAutoScaleVCoreResult({
    required this.azureApiVersion,
    this.capacityLimit,
    this.capacityObjectId,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'capacityLimit': ?capacityLimit,
      'capacityObjectId': ?capacityObjectId,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAutoScaleVCoreResult.fromMap(Map<String, dynamic> map) {
    return GetAutoScaleVCoreResult(
      azureApiVersion: map['azureApiVersion'] as String,
      capacityLimit: map['capacityLimit'] == null ? null : map['capacityLimit'] as int,
      capacityObjectId: map['capacityObjectId'] == null ? null : map['capacityObjectId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: AutoScaleVCoreSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

