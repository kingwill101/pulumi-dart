// ignore_for_file: unused_element, unnecessary_cast

import 'vpn_server_configuration_properties_response.dart';

/// Result data returned by getVpnServerConfiguration.
class GetVpnServerConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Properties of the P2SVpnServer configuration.
  final VpnServerConfigurationPropertiesResponse properties;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetVpnServerConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [properties] Properties of the P2SVpnServer configuration.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetVpnServerConfigurationResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.location,
    required this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetVpnServerConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      properties: VpnServerConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

