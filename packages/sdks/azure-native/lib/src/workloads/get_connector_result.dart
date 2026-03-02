// ignore_for_file: unused_element, unnecessary_cast

import 'connector_error_definition_response.dart';
import 'managed_rgconfiguration_response.dart';
import 'system_data_response.dart';
import 'user_assigned_service_identity_response.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Indicates any errors on the connector resource.
  final ConnectorErrorDefinitionResponse errors;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Managed service identity (user assigned identities)
  final UserAssignedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// Managed resource group configuration
  final ManagedRGConfigurationResponse? managedResourceGroupConfiguration;
  /// The name of the resource
  final String name;
  /// Defines the provisioning states.
  final String provisioningState;
  /// Defines the ID of the connector's source resource.
  final String sourceResourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [errors] Indicates any errors on the connector resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Managed service identity (user assigned identities)
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] Managed resource group configuration
  /// [name] The name of the resource
  /// [provisioningState] Defines the provisioning states.
  /// [sourceResourceId] Defines the ID of the connector's source resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetConnectorResult({
    required this.azureApiVersion,
    required this.errors,
    required this.id,
    this.identity,
    required this.location,
    this.managedResourceGroupConfiguration,
    required this.name,
    required this.provisioningState,
    required this.sourceResourceId,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'errors': errors.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration == null ? null : managedResourceGroupConfiguration!.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'sourceResourceId': sourceResourceId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      errors: ConnectorErrorDefinitionResponse.fromMap((map['errors'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : UserAssignedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : ManagedRGConfigurationResponse.fromMap((map['managedResourceGroupConfiguration']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

