// ignore_for_file: unused_element, unnecessary_cast

import 'connection_policy_properties_response.dart';

/// Result data returned by getConnectionPolicy.
class GetConnectionPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Properties of the ConnectionPolicy resource.
  final ConnectionPolicyPropertiesResponse? properties;
  /// Resource type.
  final String? type;

  /// Creates a new [GetConnectionPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [properties] Properties of the ConnectionPolicy resource.
  /// [type] Resource type.
  const GetConnectionPolicyResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetConnectionPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ConnectionPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
