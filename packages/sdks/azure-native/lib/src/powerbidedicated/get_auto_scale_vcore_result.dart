// ignore_for_file: unused_element, unnecessary_cast

import 'auto_scale_vcore_sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAutoScaleVCore.
class GetAutoScaleVCoreResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The maximum capacity of an auto scale v-core resource.
  final int? capacityLimit;
  /// The object ID of the capacity resource associated with the auto scale v-core resource.
  final String? capacityObjectId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The current deployment state of an auto scale v-core resource. The provisioningState is to indicate states for resource provisioning.
  final String? provisioningState;
  /// The SKU of the auto scale v-core resource.
  final AutoScaleVCoreSkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetAutoScaleVCoreResult({
    this.azureApiVersion,
    this.capacityLimit,
    this.capacityObjectId,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'capacityLimit': ?capacityLimit,
      'capacityObjectId': ?capacityObjectId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetAutoScaleVCoreResult.fromMap(Map<String, dynamic> map) {
    return GetAutoScaleVCoreResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityLimit: (() { final guardedValue = map['capacityLimit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      capacityObjectId: (() { final guardedValue = map['capacityObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return AutoScaleVCoreSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
