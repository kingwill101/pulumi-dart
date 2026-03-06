// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_configuration_response.dart';
import 'managed_rgconfiguration_response.dart';
import 'sapvirtual_instance_error_response.dart';
import 'sapvirtual_instance_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSapVirtualInstance.
class GetSapVirtualInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Defines if the SAP system is being created using Azure Center for SAP solutions (ACSS) or if an existing SAP system is being registered with ACSS
  final DeploymentConfigurationResponse configuration;
  /// Defines the environment type - Production/Non Production.
  final String environment;
  /// Indicates any errors on the Virtual Instance for SAP solutions resource.
  final SAPVirtualInstanceErrorResponse errors;
  /// Defines the health of SAP Instances.
  final String health;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final SAPVirtualInstanceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// Managed resource group configuration
  final ManagedRGConfigurationResponse? managedResourceGroupConfiguration;
  /// Specifies the network access configuration for the resources that will be deployed in the Managed Resource Group. The options to choose from are Public and Private. If 'Private' is chosen, the Storage Account service tag should be enabled on the subnets in which the SAP VMs exist. This is required for establishing connectivity between VM extensions and the managed resource group storage account. This setting is currently applicable only to Storage Account. Learn more here https://go.microsoft.com/fwlink/?linkid=2247228
  final String? managedResourcesNetworkAccessType;
  /// The name of the resource
  final String name;
  /// Defines the provisioning states.
  final String provisioningState;
  /// Defines the SAP Product type.
  final String sapProduct;
  /// Defines the Virtual Instance for SAP state.
  final String state;
  /// Defines the SAP Instance status.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSapVirtualInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configuration] Defines if the SAP system is being created using Azure Center for SAP solutions (ACSS) or if an existing SAP system is being registered with ACSS
  /// [environment] Defines the environment type - Production/Non Production.
  /// [errors] Indicates any errors on the Virtual Instance for SAP solutions resource.
  /// [health] Defines the health of SAP Instances.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] Managed resource group configuration
  /// [managedResourcesNetworkAccessType] Specifies the network access configuration for the resources that will be deployed in the Managed Resource Group. The options to choose from are Public and Private. If 'Private' is chosen, the Storage Account service tag should be enabled on the subnets in which the SAP VMs exist. This is required for establishing connectivity between VM extensions and the managed resource group storage account. This setting is currently applicable only to Storage Account. Learn more here https://go.microsoft.com/fwlink/?linkid=2247228
  /// [name] The name of the resource
  /// [provisioningState] Defines the provisioning states.
  /// [sapProduct] Defines the SAP Product type.
  /// [state] Defines the Virtual Instance for SAP state.
  /// [status] Defines the SAP Instance status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSapVirtualInstanceResult({
    required this.azureApiVersion,
    required this.configuration,
    required this.environment,
    required this.errors,
    required this.health,
    required this.id,
    this.identity,
    required this.location,
    this.managedResourceGroupConfiguration,
    this.managedResourcesNetworkAccessType,
    required this.name,
    required this.provisioningState,
    required this.sapProduct,
    required this.state,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'configuration': configuration.toMap(),
      'environment': environment,
      'errors': errors.toMap(),
      'health': health,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration?.toMap(),
      'managedResourcesNetworkAccessType': ?managedResourcesNetworkAccessType,
      'name': name,
      'provisioningState': provisioningState,
      'sapProduct': sapProduct,
      'state': state,
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSapVirtualInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configuration: DeploymentConfigurationResponse.fromMap((map['configuration']! as Map).cast<String, dynamic>()),
      environment: map['environment'] as String,
      errors: SAPVirtualInstanceErrorResponse.fromMap((map['errors']! as Map).cast<String, dynamic>()),
      health: map['health'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return SAPVirtualInstanceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return ManagedRGConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managedResourcesNetworkAccessType: (() { final guardedValue = map['managedResourcesNetworkAccessType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sapProduct: map['sapProduct'] as String,
      state: map['state'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

