// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_response.dart';

/// Result data returned by getPrivateEndpoint.
class GetPrivateEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The date when this private endpoint was created.
  final String createdDate;
  /// Unique opaque string (generally a GUID) that represents the metadata state of the resource (private endpoint) and changes whenever the resource is updated. Required on PUT (CreateOrUpdate) requests.
  final String etag;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// A list of connections to the remote resource. Immutable after it is set.
  final List<PrivateLinkServiceConnectionResponse>? manualPrivateLinkServiceConnections;
  /// The name of the resource
  final String name;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// Creates a new [GetPrivateEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The date when this private endpoint was created.
  /// [etag] Unique opaque string (generally a GUID) that represents the metadata state of the resource (private endpoint) and changes whenever the resource is updated. Required on PUT (CreateOrUpdate) requests.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [manualPrivateLinkServiceConnections] A list of connections to the remote resource. Immutable after it is set.
  /// [name] The name of the resource
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  const GetPrivateEndpointResult({
    required this.azureApiVersion,
    required this.createdDate,
    required this.etag,
    required this.id,
    this.manualPrivateLinkServiceConnections,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'etag': etag,
      'id': id,
      'manualPrivateLinkServiceConnections': ?(() { final guardedValue = manualPrivateLinkServiceConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'type': type,
    };
  }

  factory GetPrivateEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      manualPrivateLinkServiceConnections: (() { final guardedValue = map['manualPrivateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(guardedValue, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
