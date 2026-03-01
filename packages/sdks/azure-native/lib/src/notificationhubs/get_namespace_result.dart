// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acls_response.dart';
import 'pns_credentials_response.dart';
import 'private_endpoint_connection_resource_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Time when the namespace was created.
  final String createdAt;
  /// Gets or sets whether or not the namespace is set as Critical.
  final bool critical;
  /// Deprecated.
  final String? dataCenter;
  /// Gets or sets whether or not the namespace is currently enabled.
  final bool enabled;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Azure Insights Metrics id.
  final String metricId;
  /// The name of the resource
  final String name;
  /// Defines values for NamespaceType.
  final String? namespaceType;
  /// A collection of network authorization rules.
  final NetworkAclsResponse? networkAcls;
  /// Collection of Notification Hub or Notification Hub Namespace PNS credentials.
  final PnsCredentialsResponse? pnsCredentials;
  /// Private Endpoint Connections for namespace
  final List<PrivateEndpointConnectionResourceResponse> privateEndpointConnections;
  /// Defines values for OperationProvisioningState.
  final String? provisioningState;
  /// Type of public network access.
  final String? publicNetworkAccess;
  /// Region. The value is always set to the same value as Namespace.Location, so we are deprecating
  /// this property.
  final String region;
  /// Allowed replication region
  final String? replicationRegion;
  /// Gets or sets scaleUnit where the namespace gets created
  final String? scaleUnit;
  /// Gets or sets endpoint you can use to perform NotificationHub
  /// operations.
  final String serviceBusEndpoint;
  /// The Sku description for a namespace
  final SkuResponse sku;
  /// Namespace status.
  final String? status;
  /// Namespace subscription id.
  final String subscriptionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Time when the namespace was updated.
  final String updatedAt;
  /// Namespace SKU name.
  final String? zoneRedundancy;

  /// Creates a new [GetNamespaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] Time when the namespace was created.
  /// [critical] Gets or sets whether or not the namespace is set as Critical.
  /// [dataCenter] Deprecated.
  /// [enabled] Gets or sets whether or not the namespace is currently enabled.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [metricId] Azure Insights Metrics id.
  /// [name] The name of the resource
  /// [namespaceType] Defines values for NamespaceType.
  /// [networkAcls] A collection of network authorization rules.
  /// [pnsCredentials] Collection of Notification Hub or Notification Hub Namespace PNS credentials.
  /// [privateEndpointConnections] Private Endpoint Connections for namespace
  /// [provisioningState] Defines values for OperationProvisioningState.
  /// [publicNetworkAccess] Type of public network access.
  /// [region] Region. The value is always set to the same value as Namespace.Location, so we are deprecating
  /// [replicationRegion] Allowed replication region
  /// [scaleUnit] Gets or sets scaleUnit where the namespace gets created
  /// [serviceBusEndpoint] Gets or sets endpoint you can use to perform NotificationHub
  /// [sku] The Sku description for a namespace
  /// [status] Namespace status.
  /// [subscriptionId] Namespace subscription id.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedAt] Time when the namespace was updated.
  /// [zoneRedundancy] Namespace SKU name.
  GetNamespaceResult({
    required this.azureApiVersion,
    required this.createdAt,
    required this.critical,
    this.dataCenter,
    required this.enabled,
    required this.id,
    required this.location,
    required this.metricId,
    required this.name,
    this.namespaceType,
    this.networkAcls,
    this.pnsCredentials,
    required this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    required this.region,
    this.replicationRegion,
    this.scaleUnit,
    required this.serviceBusEndpoint,
    required this.sku,
    this.status,
    required this.subscriptionId,
    required this.systemData,
    this.tags,
    required this.type,
    required this.updatedAt,
    this.zoneRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'critical': critical,
      'dataCenter': ?dataCenter,
      'enabled': enabled,
      'id': id,
      'location': location,
      'metricId': metricId,
      'name': name,
      'namespaceType': ?namespaceType,
      'networkAcls': ?networkAcls == null ? null : networkAcls!.toMap(),
      'pnsCredentials': ?pnsCredentials == null ? null : pnsCredentials!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResourceResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'region': region,
      'replicationRegion': ?replicationRegion,
      'scaleUnit': ?scaleUnit,
      'serviceBusEndpoint': serviceBusEndpoint,
      'sku': sku.toMap(),
      'status': ?status,
      'subscriptionId': subscriptionId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updatedAt': updatedAt,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      critical: map['critical'] as bool,
      dataCenter: map['dataCenter'] == null ? null : map['dataCenter'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      metricId: map['metricId'] as String,
      name: map['name'] as String,
      namespaceType: map['namespaceType'] == null ? null : map['namespaceType'] as String,
      networkAcls: map['networkAcls'] == null ? null : NetworkAclsResponse.fromMap((map['networkAcls'] as Map).cast<String, dynamic>()),
      pnsCredentials: map['pnsCredentials'] == null ? null : PnsCredentialsResponse.fromMap((map['pnsCredentials'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResourceResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      region: map['region'] as String,
      replicationRegion: map['replicationRegion'] == null ? null : map['replicationRegion'] as String,
      scaleUnit: map['scaleUnit'] == null ? null : map['scaleUnit'] as String,
      serviceBusEndpoint: map['serviceBusEndpoint'] as String,
      sku: SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      subscriptionId: map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
      zoneRedundancy: map['zoneRedundancy'] == null ? null : map['zoneRedundancy'] as String,
    );
  }
}

