// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_for_private_link_hub_basic_response.dart';

/// Result data returned by getPrivateLinkHub.
class GetPrivateLinkHubResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// List of private endpoint connections
  final List<PrivateEndpointConnectionForPrivateLinkHubBasicResponse>
  privateEndpointConnections;

  /// PrivateLinkHub provisioning state
  final String? provisioningState;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateLinkHubResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections
  /// [provisioningState] PrivateLinkHub provisioning state
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrivateLinkHubResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.privateEndpointConnections,
    this.provisioningState,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'privateEndpointConnections':
          pulumi.Input.encodeList<
            PrivateEndpointConnectionForPrivateLinkHubBasicResponse,
            Map<String, dynamic>
          >(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPrivateLinkHubResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkHubResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections:
          pulumi.Input.decodeList<
            PrivateEndpointConnectionForPrivateLinkHubBasicResponse
          >(
            map['privateEndpointConnections']!,
            (value) =>
                PrivateEndpointConnectionForPrivateLinkHubBasicResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
