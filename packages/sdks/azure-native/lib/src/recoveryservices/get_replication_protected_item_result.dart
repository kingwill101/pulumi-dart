// ignore_for_file: unused_element, unnecessary_cast

import 'replication_protected_item_properties_response.dart';

/// Result data returned by getReplicationProtectedItem.
class GetReplicationProtectedItemResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Id
  final String? id;
  /// Resource Location
  final String? location;
  /// Resource Name
  final String? name;
  /// The custom data.
  final ReplicationProtectedItemPropertiesResponse? properties;
  /// Resource Type
  final String? type;

  /// Creates a new [GetReplicationProtectedItemResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [location] Resource Location
  /// [name] Resource Name
  /// [properties] The custom data.
  /// [type] Resource Type
  const GetReplicationProtectedItemResult({
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

  factory GetReplicationProtectedItemResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationProtectedItemResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ReplicationProtectedItemPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
