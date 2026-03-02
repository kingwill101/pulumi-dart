// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field.dart';
import 'type_primitive.dart';

/// A type definition for some HL7v2 type (incl. Segments and Datatypes).
class Type {
  /// The (sub) fields this type has (if not primitive).
  final pulumi.Input<List<Field>>? fields;
  /// The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  final pulumi.Input<String>? name;
  /// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  final pulumi.Input<TypePrimitive>? primitive;

  /// Creates a new [Type].
  /// [fields] The (sub) fields this type has (if not primitive).
  /// [name] The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  /// [primitive] If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  Type({
    this.fields,
    this.name,
    this.primitive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<Field>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<Field, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'primitive': ?pulumi.Input.mapOptionalInputValue<TypePrimitive, String>(primitive, (value) => value.value),
    };
  }

  factory Type.fromMap(Map<String, dynamic> map) {
    return Type(
      fields: map['fields'] == null ? null : (pulumi.Input.decodeList<Field>(map['fields']!, (value) => Field.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primitive: map['primitive'] == null ? null : (TypePrimitive.fromValue(map['primitive']! as String)).input(),
    );
  }
}

