// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_template_field_type_enum_type.dart';

class TagTemplateFieldType {
  /// Represents an enum type.
  /// Exactly one of `primitive_type` or `enum_type` must be set
  /// Structure is documented below.
  final pulumi.Input<TagTemplateFieldTypeEnumType>? enumType;
  /// Represents primitive types - string, bool etc.
  /// Exactly one of `primitive_type` or `enum_type` must be set
  /// Possible values are: `DOUBLE`, `STRING`, `BOOL`, `TIMESTAMP`.
  final pulumi.Input<String>? primitiveType;

  /// Creates a new [TagTemplateFieldType].
  /// [enumType] Represents an enum type.
  /// [primitiveType] Represents primitive types - string, bool etc.
  const TagTemplateFieldType({
    this.enumType,
    this.primitiveType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumType': ?pulumi.Input.mapOptionalInputValue<TagTemplateFieldTypeEnumType, Map<String, dynamic>>(enumType, (value) => value.toMap()),
      'primitiveType': ?primitiveType,
    };
  }

  factory TagTemplateFieldType.fromMap(Map<String, dynamic> map) {
    return TagTemplateFieldType(
      enumType: (() { final guardedValue = map['enumType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagTemplateFieldTypeEnumType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primitiveType: (() { final guardedValue = map['primitiveType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

