// ignore_for_file: unused_element, unnecessary_cast

import 'container_group_properties_response.dart';
import 'standby_container_group_pool_elasticity_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStandbyContainerGroupPool.
class GetStandbyContainerGroupPoolResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Specifies container group properties of standby container group pools.
  final ContainerGroupPropertiesResponse? containerGroupProperties;
  /// Specifies elasticity profile of standby container group pools.
  final StandbyContainerGroupPoolElasticityProfileResponse? elasticityProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetStandbyContainerGroupPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerGroupProperties] Specifies container group properties of standby container group pools.
  /// [elasticityProfile] Specifies elasticity profile of standby container group pools.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStandbyContainerGroupPoolResult({
    this.azureApiVersion,
    this.containerGroupProperties,
    this.elasticityProfile,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'containerGroupProperties': ?containerGroupProperties?.toMap(),
      'elasticityProfile': ?elasticityProfile?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetStandbyContainerGroupPoolResult.fromMap(Map<String, dynamic> map) {
    return GetStandbyContainerGroupPoolResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerGroupProperties: (() { final guardedValue = map['containerGroupProperties']; if (guardedValue == null) return null; return ContainerGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      elasticityProfile: (() { final guardedValue = map['elasticityProfile']; if (guardedValue == null) return null; return StandbyContainerGroupPoolElasticityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
