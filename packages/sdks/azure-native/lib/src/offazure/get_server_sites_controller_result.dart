// ignore_for_file: unused_element, unnecessary_cast

import 'site_agent_properties_response.dart';
import 'site_spn_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getServerSitesController.
class GetServerSitesControllerResult {
  /// Gets or sets the on-premises agent details.
  final SiteAgentPropertiesResponse? agentDetails;
  /// Gets or sets the Appliance Name.
  final String? applianceName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the ARM ID of migration hub solution for SDS.
  final String? discoverySolutionId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Gets the Master Site this site is linked to.
  final String masterSiteId;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Gets the service endpoint.
  final String serviceEndpoint;
  /// Gets or sets the service principal identity details used by agent for
  /// communication
  /// to the service.
  final SiteSpnPropertiesResponse? servicePrincipalIdentityDetails;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetServerSitesControllerResult].
  /// [agentDetails] Gets or sets the on-premises agent details.
  /// [applianceName] Gets or sets the Appliance Name.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoverySolutionId] Gets or sets the ARM ID of migration hub solution for SDS.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [masterSiteId] Gets the Master Site this site is linked to.
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [serviceEndpoint] Gets the service endpoint.
  /// [servicePrincipalIdentityDetails] Gets or sets the service principal identity details used by agent for
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetServerSitesControllerResult({
    this.agentDetails,
    this.applianceName,
    required this.azureApiVersion,
    this.discoverySolutionId,
    required this.id,
    required this.location,
    required this.masterSiteId,
    required this.name,
    required this.provisioningState,
    required this.serviceEndpoint,
    this.servicePrincipalIdentityDetails,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': ?agentDetails?.toMap(),
      'applianceName': ?applianceName,
      'azureApiVersion': azureApiVersion,
      'discoverySolutionId': ?discoverySolutionId,
      'id': id,
      'location': location,
      'masterSiteId': masterSiteId,
      'name': name,
      'provisioningState': provisioningState,
      'serviceEndpoint': serviceEndpoint,
      'servicePrincipalIdentityDetails': ?servicePrincipalIdentityDetails?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetServerSitesControllerResult.fromMap(Map<String, dynamic> map) {
    return GetServerSitesControllerResult(
      agentDetails: (() { final guardedValue = map['agentDetails']; if (guardedValue == null) return null; return SiteAgentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      applianceName: (() { final guardedValue = map['applianceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      discoverySolutionId: (() { final guardedValue = map['discoverySolutionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      masterSiteId: map['masterSiteId'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      servicePrincipalIdentityDetails: (() { final guardedValue = map['servicePrincipalIdentityDetails']; if (guardedValue == null) return null; return SiteSpnPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
