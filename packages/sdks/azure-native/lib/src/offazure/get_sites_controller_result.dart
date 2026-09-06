// ignore_for_file: unused_element, unnecessary_cast

import 'site_agent_properties_response.dart';
import 'site_spn_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSitesController.
class GetSitesControllerResult {
  /// Gets or sets the on-premises agent details.
  final SiteAgentPropertiesResponse? agentDetails;
  /// Gets or sets the Appliance Name.
  final String? applianceName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the ARM ID of migration hub solution for SDS.
  final String? discoverySolutionId;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String? eTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Gets the Master Site this site is linked to.
  final String? masterSiteId;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Gets the service endpoint.
  final String? serviceEndpoint;
  /// Gets or sets the service principal identity details used by agent for
  /// communication
  /// to the service.
  final SiteSpnPropertiesResponse? servicePrincipalIdentityDetails;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSitesControllerResult].
  /// [agentDetails] Gets or sets the on-premises agent details.
  /// [applianceName] Gets or sets the Appliance Name.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoverySolutionId] Gets or sets the ARM ID of migration hub solution for SDS.
  /// [eTag] If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
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
  const GetSitesControllerResult({
    this.agentDetails,
    this.applianceName,
    this.azureApiVersion,
    this.discoverySolutionId,
    this.eTag,
    this.id,
    this.location,
    this.masterSiteId,
    this.name,
    this.provisioningState,
    this.serviceEndpoint,
    this.servicePrincipalIdentityDetails,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': ?agentDetails?.toMap(),
      'applianceName': ?applianceName,
      'azureApiVersion': ?azureApiVersion,
      'discoverySolutionId': ?discoverySolutionId,
      'eTag': ?eTag,
      'id': ?id,
      'location': ?location,
      'masterSiteId': ?masterSiteId,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'serviceEndpoint': ?serviceEndpoint,
      'servicePrincipalIdentityDetails': ?servicePrincipalIdentityDetails?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetSitesControllerResult.fromMap(Map<String, dynamic> map) {
    return GetSitesControllerResult(
      agentDetails: (() { final guardedValue = map['agentDetails']; if (guardedValue == null) return null; return SiteAgentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      applianceName: (() { final guardedValue = map['applianceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoverySolutionId: (() { final guardedValue = map['discoverySolutionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      masterSiteId: (() { final guardedValue = map['masterSiteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceEndpoint: (() { final guardedValue = map['serviceEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicePrincipalIdentityDetails: (() { final guardedValue = map['servicePrincipalIdentityDetails']; if (guardedValue == null) return null; return SiteSpnPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
