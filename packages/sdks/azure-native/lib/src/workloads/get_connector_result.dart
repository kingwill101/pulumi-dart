// ignore_for_file: unused_element, unnecessary_cast

import 'connector_error_definition_response.dart';
import 'managed_rgconfiguration_response.dart';
import 'system_data_response.dart';
import 'user_assigned_service_identity_response.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Indicates any errors on the connector resource.
  final ConnectorErrorDefinitionResponse? errors;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Managed service identity (user assigned identities)
  final UserAssignedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// Managed resource group configuration
  final ManagedRGConfigurationResponse? managedResourceGroupConfiguration;
  /// The name of the resource
  final String? name;
  /// Defines the provisioning states.
  final String? provisioningState;
  /// Defines the ID of the connector's source resource.
  final String? sourceResourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetConnectorResult({
    this.azureApiVersion,
    this.errors,
    this.id,
    this.identity,
    this.location,
    this.managedResourceGroupConfiguration,
    this.name,
    this.provisioningState,
    this.sourceResourceId,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'errors': ?errors?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sourceResourceId': ?sourceResourceId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return ConnectorErrorDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return UserAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return ManagedRGConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
