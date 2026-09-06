// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conn_string_value_type_pair_response.dart';

/// Result data returned by listWebAppConnectionStrings.
class ListWebAppConnectionStringsResult {
  /// Resource Id.
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String? name;
  /// Connection strings.
  final Map<String, ConnStringValueTypePairResponse>? properties;
  /// Resource type.
  final String? type;

  /// Creates a new [ListWebAppConnectionStringsResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [properties] Connection strings.
  /// [type] Resource type.
  const ListWebAppConnectionStringsResult({
    this.id,
    this.kind,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'properties': ?(() { final guardedValue = properties; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ConnStringValueTypePairResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory ListWebAppConnectionStringsResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppConnectionStringsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ConnStringValueTypePairResponse>(guardedValue, (value) => ConnStringValueTypePairResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
