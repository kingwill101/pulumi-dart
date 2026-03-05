// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_template_field_type_enum_type_allowed_value.dart';

class TagTemplateFieldTypeEnumType {
  /// The set of allowed values for this enum. The display names of the
  /// values must be case-insensitively unique within this set. Currently,
  /// enum values can only be added to the list of allowed values. Deletion
  /// and renaming of enum values are not supported.
  /// Can have up to 500 allowed values.
  /// Structure is documented below.
  final pulumi.Input<List<TagTemplateFieldTypeEnumTypeAllowedValue>> allowedValues;

  /// Creates a new [TagTemplateFieldTypeEnumType].
  /// [allowedValues] The set of allowed values for this enum. The display names of the
  TagTemplateFieldTypeEnumType({
    required this.allowedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': pulumi.Input.mapInputValue<List<TagTemplateFieldTypeEnumTypeAllowedValue>, List<Map<String, dynamic>>>(allowedValues, (value) => pulumi.Input.encodeList<TagTemplateFieldTypeEnumTypeAllowedValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TagTemplateFieldTypeEnumType.fromMap(Map<String, dynamic> map) {
    return TagTemplateFieldTypeEnumType(
      allowedValues: pulumi.Input.fromValue(pulumi.Input.decodeList<TagTemplateFieldTypeEnumTypeAllowedValue>(map['allowedValues']!, (value) => TagTemplateFieldTypeEnumTypeAllowedValue.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

