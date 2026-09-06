// ignore_for_file: unused_element, unnecessary_cast

import 'capacity_sku_response.dart';
import 'dedicated_capacity_administrators_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCapacityDetails.
class GetCapacityDetailsResult {
  /// A collection of Dedicated capacity administrators
  final DedicatedCapacityAdministratorsResponse? administration;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Capacity name
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Specifies the generation of the Power BI Embedded capacity. If no value is specified, the default value 'Gen2' is used. [Learn More](https://docs.microsoft.com/power-bi/developer/embedded/power-bi-embedded-generation-2)
  final String? mode;
  /// The name of the resource
  final String? name;
  /// The current deployment state of PowerBI Dedicated resource. The provisioningState is to indicate states for resource provisioning.
  final String? provisioningState;
  /// The SKU of the PowerBI Dedicated capacity resource.
  final CapacitySkuResponse? sku;
  /// The current state of PowerBI Dedicated resource. The state is to indicate more states outside of resource provisioning.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Tenant ID for the capacity. Used for creating Pro Plus capacity.
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCapacityDetailsResult].
  /// [administration] A collection of Dedicated capacity administrators
  /// [azureApiVersion] The Azure API version of the resource.
  /// [friendlyName] Capacity name
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [mode] Specifies the generation of the Power BI Embedded capacity. If no value is specified, the default value 'Gen2' is used. [Learn More](https://docs.microsoft.com/power-bi/developer/embedded/power-bi-embedded-generation-2)
  /// [name] The name of the resource
  /// [provisioningState] The current deployment state of PowerBI Dedicated resource. The provisioningState is to indicate states for resource provisioning.
  /// [sku] The SKU of the PowerBI Dedicated capacity resource.
  /// [state] The current state of PowerBI Dedicated resource. The state is to indicate more states outside of resource provisioning.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tenantId] Tenant ID for the capacity. Used for creating Pro Plus capacity.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCapacityDetailsResult({
    this.administration,
    this.azureApiVersion,
    this.friendlyName,
    this.id,
    this.location,
    this.mode,
    this.name,
    this.provisioningState,
    this.sku,
    this.state,
    this.systemData,
    this.tags,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administration': ?administration?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'friendlyName': ?friendlyName,
      'id': ?id,
      'location': ?location,
      'mode': ?mode,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'state': ?state,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetCapacityDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityDetailsResult(
      administration: (() { final guardedValue = map['administration']; if (guardedValue == null) return null; return DedicatedCapacityAdministratorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return CapacitySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
