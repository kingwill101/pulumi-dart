// ignore_for_file: unused_element, unnecessary_cast

import 'shared_key_properties_response.dart';

/// Result data returned by listVpnLinkConnectionDefaultSharedKey.
class ListVpnLinkConnectionDefaultSharedKeyResult {
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Properties of the shared key.
  final SharedKeyPropertiesResponse properties;
  /// Resource type.
  final String type;

  /// Creates a new [ListVpnLinkConnectionDefaultSharedKeyResult].
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [properties] Properties of the shared key.
  /// [type] Resource type.
  const ListVpnLinkConnectionDefaultSharedKeyResult({
    this.id,
    this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory ListVpnLinkConnectionDefaultSharedKeyResult.fromMap(Map<String, dynamic> map) {
    return ListVpnLinkConnectionDefaultSharedKeyResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: SharedKeyPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

