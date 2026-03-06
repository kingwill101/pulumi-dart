// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_service_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagedClusterService.
class GetManagedClusterServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource identifier.
  final String id;
  /// Resource location depends on the parent resource.
  final String? location;
  /// Azure resource name.
  final String name;
  /// The service resource properties.
  final StatefulServicePropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Azure resource tags.
  final Map<String, String>? tags;
  /// Azure resource type.
  final String type;

  /// Creates a new [GetManagedClusterServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource identifier.
  /// [location] Resource location depends on the parent resource.
  /// [name] Azure resource name.
  /// [properties] The service resource properties.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Azure resource tags.
  /// [type] Azure resource type.
  const GetManagedClusterServiceResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetManagedClusterServiceResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: StatefulServicePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

