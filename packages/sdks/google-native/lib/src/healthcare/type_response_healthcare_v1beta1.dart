// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_response_healthcare_v1beta1.dart';

/// A type definition for some HL7v2 type (incl. Segments and Datatypes).
class TypeResponseHealthcareV1beta1 {
  /// The (sub) fields this type has (if not primitive).
  final List<FieldResponseHealthcareV1beta1> fields;
  /// The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  final String name;
  /// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  final String primitive;

  /// Creates a new [TypeResponseHealthcareV1beta1].
  /// [fields] The (sub) fields this type has (if not primitive).
  /// [name] The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  /// [primitive] If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  TypeResponseHealthcareV1beta1({
    required this.fields,
    required this.name,
    required this.primitive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.encodeList<FieldResponseHealthcareV1beta1, Map<String, dynamic>>(fields, (value) => value.toMap()),
      'name': name,
      'primitive': primitive,
    };
  }

  factory TypeResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return TypeResponseHealthcareV1beta1(
      fields: pulumi.Input.decodeList<FieldResponseHealthcareV1beta1>(map['fields'], (value) => FieldResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      primitive: map['primitive'] as String,
    );
  }
}

