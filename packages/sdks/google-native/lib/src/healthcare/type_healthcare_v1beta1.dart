// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_healthcare_v1beta1.dart';
import 'type_primitive_healthcare_v1beta1.dart';

/// A type definition for some HL7v2 type (incl. Segments and Datatypes).
class TypeHealthcareV1beta1 {
  /// The (sub) fields this type has (if not primitive).
  final pulumi.Input<List<FieldHealthcareV1beta1>>? fields;
  /// The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  final pulumi.Input<String>? name;
  /// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  final pulumi.Input<TypePrimitiveHealthcareV1beta1>? primitive;

  /// Creates a new [TypeHealthcareV1beta1].
  /// [fields] The (sub) fields this type has (if not primitive).
  /// [name] The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN".
  /// [primitive] If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
  const TypeHealthcareV1beta1({
    this.fields,
    this.name,
    this.primitive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<FieldHealthcareV1beta1>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<FieldHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'primitive': ?pulumi.Input.mapOptionalInputValue<TypePrimitiveHealthcareV1beta1, String>(primitive, (value) => value.wireValue),
    };
  }

  factory TypeHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return TypeHealthcareV1beta1(
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FieldHealthcareV1beta1>(guardedValue, (value) => FieldHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primitive: (() { final guardedValue = map['primitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypePrimitiveHealthcareV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

