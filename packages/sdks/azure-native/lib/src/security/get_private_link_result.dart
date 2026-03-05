// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';
import 'private_link_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateLink.
class GetPrivateLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// List of private endpoint connections associated with this private link. Each connection represents a private endpoint from a customer's virtual network.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// List of private link resources available for connection. For Defender services, this typically includes the 'containers' group with 'api' and regional data endpoints.
  final List<PrivateLinkResourceResponse> privateLinkResources;
  /// The current provisioning state of the private link resource. Indicates whether the resource is being created, updated, deleted, or has completed successfully.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections associated with this private link. Each connection represents a private endpoint from a customer's virtual network.
  /// [privateLinkResources] List of private link resources available for connection. For Defender services, this typically includes the 'containers' group with 'api' and regional data endpoints.
  /// [provisioningState] The current provisioning state of the private link resource. Indicates whether the resource is being created, updated, deleted, or has completed successfully.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrivateLinkResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.privateEndpointConnections,
    required this.privateLinkResources,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'privateLinkResources': pulumi.Input.encodeList<PrivateLinkResourceResponse, Map<String, dynamic>>(privateLinkResources, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPrivateLinkResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkResources: pulumi.Input.decodeList<PrivateLinkResourceResponse>(map['privateLinkResources']!, (value) => PrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

