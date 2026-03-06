// ignore_for_file: unused_element, unnecessary_cast

import 'management_configuration_properties_response.dart';

/// Result data returned by getManagementConfiguration.
class GetManagementConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Resource location
  final String? location;
  /// Resource name.
  final String name;
  /// Properties for ManagementConfiguration object supported by the OperationsManagement resource provider.
  final ManagementConfigurationPropertiesResponse properties;
  /// Resource type.
  final String type;

  /// Creates a new [GetManagementConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [location] Resource location
  /// [name] Resource name.
  /// [properties] Properties for ManagementConfiguration object supported by the OperationsManagement resource provider.
  /// [type] Resource type.
  const GetManagementConfigurationResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetManagementConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetManagementConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: ManagementConfigurationPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

