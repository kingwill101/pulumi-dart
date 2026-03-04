// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conn_string_value_type_pair_response.dart';

/// Result data returned by listWebAppConnectionStringsSlot.
class ListWebAppConnectionStringsSlotResult {
  /// Resource Id.
  final String id;

  /// Kind of resource.
  final String? kind;

  /// Resource Name.
  final String name;

  /// Connection strings.
  final Map<String, ConnStringValueTypePairResponse> properties;

  /// Resource type.
  final String type;

  /// Creates a new [ListWebAppConnectionStringsSlotResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [properties] Connection strings.
  /// [type] Resource type.
  ListWebAppConnectionStringsSlotResult({
    required this.id,
    this.kind,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'name': name,
      'properties':
          pulumi.Input.encodeMapValues<
            ConnStringValueTypePairResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ListWebAppConnectionStringsSlotResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListWebAppConnectionStringsSlotResult(
      id: map['id'] as String,
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      properties: pulumi.Input.decodeMapValues<ConnStringValueTypePairResponse>(
        map['properties']!,
        (value) => ConnStringValueTypePairResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      type: map['type'] as String,
    );
  }
}
