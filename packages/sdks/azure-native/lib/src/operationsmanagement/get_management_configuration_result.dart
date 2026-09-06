// ignore_for_file: unused_element, unnecessary_cast

import 'management_configuration_properties_response.dart';

/// Result data returned by getManagementConfiguration.
class GetManagementConfigurationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource location
  final String? location;
  /// Resource name.
  final String? name;
  /// Properties for ManagementConfiguration object supported by the OperationsManagement resource provider.
  final ManagementConfigurationPropertiesResponse? properties;
  /// Resource type.
  final String? type;

  /// Creates a new [GetManagementConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [location] Resource location
  /// [name] Resource name.
  /// [properties] Properties for ManagementConfiguration object supported by the OperationsManagement resource provider.
  /// [type] Resource type.
  const GetManagementConfigurationResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetManagementConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetManagementConfigurationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ManagementConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
