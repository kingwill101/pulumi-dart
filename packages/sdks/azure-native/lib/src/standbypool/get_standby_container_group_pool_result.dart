// ignore_for_file: unused_element, unnecessary_cast

import 'container_group_properties_response.dart';
import 'standby_container_group_pool_elasticity_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStandbyContainerGroupPool.
class GetStandbyContainerGroupPoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies container group properties of standby container group pools.
  final ContainerGroupPropertiesResponse containerGroupProperties;
  /// Specifies elasticity profile of standby container group pools.
  final StandbyContainerGroupPoolElasticityProfileResponse elasticityProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetStandbyContainerGroupPoolResult({
    required this.azureApiVersion,
    required this.containerGroupProperties,
    required this.elasticityProfile,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'containerGroupProperties': containerGroupProperties.toMap(),
      'elasticityProfile': elasticityProfile.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetStandbyContainerGroupPoolResult.fromMap(Map<String, dynamic> map) {
    return GetStandbyContainerGroupPoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      containerGroupProperties: ContainerGroupPropertiesResponse.fromMap((map['containerGroupProperties'] as Map).cast<String, dynamic>()),
      elasticityProfile: StandbyContainerGroupPoolElasticityProfileResponse.fromMap((map['elasticityProfile'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

