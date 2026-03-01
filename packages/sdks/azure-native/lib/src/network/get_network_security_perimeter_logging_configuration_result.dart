// ignore_for_file: unused_element, unnecessary_cast

import 'nsp_logging_configuration_properties_response.dart';

/// Result data returned by getNetworkSecurityPerimeterLoggingConfiguration.
class GetNetworkSecurityPerimeterLoggingConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Properties of the NSP logging configuration.
  final NspLoggingConfigurationPropertiesResponse properties;
  /// Resource type.
  final String type;

  /// Creates a new [GetNetworkSecurityPerimeterLoggingConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [properties] Properties of the NSP logging configuration.
  /// [type] Resource type.
  GetNetworkSecurityPerimeterLoggingConfigurationResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetNetworkSecurityPerimeterLoggingConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterLoggingConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: NspLoggingConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

