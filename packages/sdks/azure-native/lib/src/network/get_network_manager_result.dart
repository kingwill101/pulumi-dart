// ignore_for_file: unused_element, unnecessary_cast

import 'network_manager_properties_response_network_manager_scopes.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkManager.
class GetNetworkManagerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// A description of the network manager.
  final String? description;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// Resource ID.
  final String? id;

  /// Resource location.
  final String? location;

  /// Resource name.
  final String name;

  /// Scope Access.
  final List<String>? networkManagerScopeAccesses;

  /// Scope of Network Manager.
  final NetworkManagerPropertiesResponseNetworkManagerScopes
  networkManagerScopes;

  /// The provisioning state of the network manager resource.
  final String provisioningState;

  /// Unique identifier for this resource.
  final String resourceGuid;

  /// The system metadata related to this resource.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Resource type.
  final String type;

  /// Creates a new [GetNetworkManagerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the network manager.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkManagerScopeAccesses] Scope Access.
  /// [networkManagerScopes] Scope of Network Manager.
  /// [provisioningState] The provisioning state of the network manager resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [systemData] The system metadata related to this resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetNetworkManagerResult({
    required this.azureApiVersion,
    this.description,
    required this.etag,
    this.id,
    this.location,
    required this.name,
    this.networkManagerScopeAccesses,
    required this.networkManagerScopes,
    required this.provisioningState,
    required this.resourceGuid,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'networkManagerScopeAccesses': ?networkManagerScopeAccesses,
      'networkManagerScopes': networkManagerScopes.toMap(),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkManagerResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      etag: map['etag'] as String,
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      networkManagerScopeAccesses: (() {
        final guardedValue = map['networkManagerScopeAccesses'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      networkManagerScopes:
          NetworkManagerPropertiesResponseNetworkManagerScopes.fromMap(
            (map['networkManagerScopes']! as Map).cast<String, dynamic>(),
          ),
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
