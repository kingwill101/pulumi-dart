// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_response.dart';

/// A type definition for some HL7v2 type (incl. Segments and Datatypes).
class TypeResponse {
  /// The (sub) fields this type has (if not primitive).
  final pulumi.Input<List<FieldResponse>> fields;
  /// The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  final pulumi.Input<String> name;
  /// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  final pulumi.Input<String> primitive;

  /// Creates a new [TypeResponse].
  /// [fields] The (sub) fields this type has (if not primitive).
  /// [name] The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  /// [primitive] If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  TypeResponse({
    required this.fields,
    required this.name,
    required this.primitive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<FieldResponse>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<FieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'primitive': primitive,
    };
  }

  factory TypeResponse.fromMap(Map<String, dynamic> map) {
    return TypeResponse(
      fields: (pulumi.Input.decodeList<FieldResponse>(map['fields'], (value) => FieldResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      primitive: (map['primitive'] as String).input(),
    );
  }
}

