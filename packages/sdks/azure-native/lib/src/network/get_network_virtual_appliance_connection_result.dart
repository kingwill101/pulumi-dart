// ignore_for_file: unused_element, unnecessary_cast

import 'network_virtual_appliance_connection_properties_response.dart';

/// Result data returned by getNetworkVirtualApplianceConnection.
class GetNetworkVirtualApplianceConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String? id;
  /// The name of the resource.
  final String? name;
  /// Properties of the express route connection.
  final NetworkVirtualApplianceConnectionPropertiesResponse properties;

  /// Creates a new [GetNetworkVirtualApplianceConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] The name of the resource.
  /// [properties] Properties of the express route connection.
  GetNetworkVirtualApplianceConnectionResult({
    required this.azureApiVersion,
    this.id,
    this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': properties.toMap(),
    };
  }

  factory GetNetworkVirtualApplianceConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkVirtualApplianceConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: NetworkVirtualApplianceConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

