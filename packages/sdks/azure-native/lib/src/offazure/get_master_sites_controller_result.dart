// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMasterSitesController.
class GetMasterSitesControllerResult {
  /// Gets or sets a value indicating whether multiple sites per site type are
  /// allowed.
  final bool? allowMultipleSites;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets a value for customer storage account ARM id.
  final String? customerStorageAccountArmId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Gets the nested sites under Master Site.
  final List<String>? nestedSites;
  /// Gets the private endpoint connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// provisioning state enum
  final String? provisioningState;
  /// Gets or sets the state of public network access.
  final String? publicNetworkAccess;
  /// Gets or sets the sites that are a part of Master Site.
  /// The key
  /// should contain the Site ARM name.
  final List<String>? sites;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetMasterSitesControllerResult].
  /// [allowMultipleSites] Gets or sets a value indicating whether multiple sites per site type are
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customerStorageAccountArmId] Gets or sets a value for customer storage account ARM id.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [nestedSites] Gets the nested sites under Master Site.
  /// [privateEndpointConnections] Gets the private endpoint connections.
  /// [provisioningState] provisioning state enum
  /// [publicNetworkAccess] Gets or sets the state of public network access.
  /// [sites] Gets or sets the sites that are a part of Master Site.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetMasterSitesControllerResult({
    this.allowMultipleSites,
    this.azureApiVersion,
    this.customerStorageAccountArmId,
    this.id,
    this.location,
    this.name,
    this.nestedSites,
    this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    this.sites,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMultipleSites': ?allowMultipleSites,
      'azureApiVersion': ?azureApiVersion,
      'customerStorageAccountArmId': ?customerStorageAccountArmId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'nestedSites': ?nestedSites,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sites': ?sites,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetMasterSitesControllerResult.fromMap(Map<String, dynamic> map) {
    return GetMasterSitesControllerResult(
      allowMultipleSites: (() { final guardedValue = map['allowMultipleSites']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerStorageAccountArmId: (() { final guardedValue = map['customerStorageAccountArmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nestedSites: (() { final guardedValue = map['nestedSites']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sites: (() { final guardedValue = map['sites']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
