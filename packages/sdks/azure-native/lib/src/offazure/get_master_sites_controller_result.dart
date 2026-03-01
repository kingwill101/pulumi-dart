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
  final String azureApiVersion;
  /// Gets or sets a value for customer storage account ARM id.
  final String? customerStorageAccountArmId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Gets the nested sites under Master Site.
  final List<String> nestedSites;
  /// Gets the private endpoint connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// provisioning state enum
  final String provisioningState;
  /// Gets or sets the state of public network access.
  final String? publicNetworkAccess;
  /// Gets or sets the sites that are a part of Master Site.
  /// The key
  /// should contain the Site ARM name.
  final List<String>? sites;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetMasterSitesControllerResult({
    this.allowMultipleSites,
    required this.azureApiVersion,
    this.customerStorageAccountArmId,
    required this.id,
    required this.location,
    required this.name,
    required this.nestedSites,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.sites,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMultipleSites': ?allowMultipleSites,
      'azureApiVersion': azureApiVersion,
      'customerStorageAccountArmId': ?customerStorageAccountArmId,
      'id': id,
      'location': location,
      'name': name,
      'nestedSites': nestedSites,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sites': ?sites,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMasterSitesControllerResult.fromMap(Map<String, dynamic> map) {
    return GetMasterSitesControllerResult(
      allowMultipleSites: map['allowMultipleSites'] == null ? null : map['allowMultipleSites'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      customerStorageAccountArmId: map['customerStorageAccountArmId'] == null ? null : map['customerStorageAccountArmId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      nestedSites: (map['nestedSites'] as List).cast<String>(),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      sites: map['sites'] == null ? null : (map['sites'] as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

