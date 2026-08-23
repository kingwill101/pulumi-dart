// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_field_schema_categories.dart';
import 'table_field_schema_policy_tags.dart';
import 'table_field_schema_range_element_type.dart';

class TableFieldSchema {
  /// [Optional] The categories attached to this field, used for field-level access control.
  final pulumi.Input<TableFieldSchemaCategories>? categories;
  /// Optional. Collation specification of the field. It only can be set on string type field.
  final pulumi.Input<String>? collation;
  /// Optional. A SQL expression to specify the default value for this field. It can only be set for top level fields (columns). You can use struct or array expression to specify default value for the entire struct or array. The valid SQL expressions are: - Literals for all data types, including STRUCT and ARRAY. - Following functions: - CURRENT_TIMESTAMP - CURRENT_TIME - CURRENT_DATE - CURRENT_DATETIME - GENERATE_UUID - RAND - SESSION_USER - ST_GEOGPOINT - Struct or array composed with the above allowed functions, for example, [CURRENT_DATE(), DATE '2020-01-01']
  final pulumi.Input<String>? defaultValueExpression;
  /// [Optional] The field description. The maximum length is 1,024 characters.
  final pulumi.Input<String>? description;
  /// [Optional] Describes the nested schema fields if the type property is set to RECORD.
  final pulumi.Input<List<TableFieldSchema>>? fields;
  /// [Optional] Maximum length of values of this field for STRINGS or BYTES. If max_length is not specified, no maximum length constraint is imposed on this field. If type = "STRING", then max_length represents the maximum UTF-8 length of strings in this field. If type = "BYTES", then max_length represents the maximum number of bytes in this field. It is invalid to set this field if type ≠ "STRING" and ≠ "BYTES".
  final pulumi.Input<String>? maxLength;
  /// [Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE.
  final pulumi.Input<String>? mode;
  /// [Required] The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 300 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<TableFieldSchemaPolicyTags>? policyTags;
  /// [Optional] Precision (maximum number of total digits in base 10) and scale (maximum number of digits in the fractional part in base 10) constraints for values of this field for NUMERIC or BIGNUMERIC. It is invalid to set precision or scale if type ≠ "NUMERIC" and ≠ "BIGNUMERIC". If precision and scale are not specified, no value range constraint is imposed on this field insofar as values are permitted by the type. Values of this NUMERIC or BIGNUMERIC field must be in this range when: - Precision (P) and scale (S) are specified: [-10P-S + 10-S, 10P-S - 10-S] - Precision (P) is specified but not scale (and thus scale is interpreted to be equal to zero): [-10P + 1, 10P - 1]. Acceptable values for precision and scale if both are specified: - If type = "NUMERIC": 1 ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. - If type = "BIGNUMERIC": 1 ≤ precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision if only precision is specified but not scale (and thus scale is interpreted to be equal to zero): - If type = "NUMERIC": 1 ≤ precision ≤ 29. - If type = "BIGNUMERIC": 1 ≤ precision ≤ 38. If scale is specified but not precision, then it is invalid.
  final pulumi.Input<String>? precision;
  /// Optional. The subtype of the RANGE, if the type of this field is RANGE. If the type is RANGE, this field is required. Possible values for the field element type of a RANGE include: - DATE - DATETIME - TIMESTAMP
  final pulumi.Input<TableFieldSchemaRangeElementType>? rangeElementType;
  /// Optional. Rounding Mode specification of the field. It only can be set on NUMERIC or BIGNUMERIC type fields.
  final pulumi.Input<String>? roundingMode;
  /// [Optional] See documentation for precision.
  final pulumi.Input<String>? scale;
  /// [Required] The field data type. Possible values include STRING, BYTES, INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT), NUMERIC, BIGNUMERIC, BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, INTERVAL, RECORD (where RECORD indicates that the field contains a nested schema) or STRUCT (same as RECORD).
  final pulumi.Input<String>? type;

  /// Creates a new [TableFieldSchema].
  /// [categories] [Optional] The categories attached to this field, used for field-level access control.
  /// [collation] Optional. Collation specification of the field. It only can be set on string type field.
  /// [defaultValueExpression] Optional. A SQL expression to specify the default value for this field. It can only be set for top level fields (columns). You can use struct or array expression to specify default value for the entire struct or array. The valid SQL expressions are: - Literals for all data types, including STRUCT and ARRAY. - Following functions: - CURRENT_TIMESTAMP - CURRENT_TIME - CURRENT_DATE - CURRENT_DATETIME - GENERATE_UUID - RAND - SESSION_USER - ST_GEOGPOINT - Struct or array composed with the above allowed functions, for example, [CURRENT_DATE(), DATE '2020-01-01']
  /// [description] [Optional] The field description. The maximum length is 1,024 characters.
  /// [fields] [Optional] Describes the nested schema fields if the type property is set to RECORD.
  /// [maxLength] [Optional] Maximum length of values of this field for STRINGS or BYTES. If max_length is not specified, no maximum length constraint is imposed on this field. If type = "STRING", then max_length represents the maximum UTF-8 length of strings in this field. If type = "BYTES", then max_length represents the maximum number of bytes in this field. It is invalid to set this field if type ≠ "STRING" and ≠ "BYTES".
  /// [mode] [Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE.
  /// [name] [Required] The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 300 characters.
  /// [policyTags] Optional.
  /// [precision] [Optional] Precision (maximum number of total digits in base 10) and scale (maximum number of digits in the fractional part in base 10) constraints for values of this field for NUMERIC or BIGNUMERIC. It is invalid to set precision or scale if type ≠ "NUMERIC" and ≠ "BIGNUMERIC". If precision and scale are not specified, no value range constraint is imposed on this field insofar as values are permitted by the type. Values of this NUMERIC or BIGNUMERIC field must be in this range when: - Precision (P) and scale (S) are specified: [-10P-S + 10-S, 10P-S - 10-S] - Precision (P) is specified but not scale (and thus scale is interpreted to be equal to zero): [-10P + 1, 10P - 1]. Acceptable values for precision and scale if both are specified: - If type = "NUMERIC": 1 ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. - If type = "BIGNUMERIC": 1 ≤ precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision if only precision is specified but not scale (and thus scale is interpreted to be equal to zero): - If type = "NUMERIC": 1 ≤ precision ≤ 29. - If type = "BIGNUMERIC": 1 ≤ precision ≤ 38. If scale is specified but not precision, then it is invalid.
  /// [rangeElementType] Optional. The subtype of the RANGE, if the type of this field is RANGE. If the type is RANGE, this field is required. Possible values for the field element type of a RANGE include: - DATE - DATETIME - TIMESTAMP
  /// [roundingMode] Optional. Rounding Mode specification of the field. It only can be set on NUMERIC or BIGNUMERIC type fields.
  /// [scale] [Optional] See documentation for precision.
  /// [type] [Required] The field data type. Possible values include STRING, BYTES, INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT), NUMERIC, BIGNUMERIC, BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, INTERVAL, RECORD (where RECORD indicates that the field contains a nested schema) or STRUCT (same as RECORD).
  const TableFieldSchema({
    this.categories,
    this.collation,
    this.defaultValueExpression,
    this.description,
    this.fields,
    this.maxLength,
    this.mode,
    this.name,
    this.policyTags,
    this.precision,
    this.rangeElementType,
    this.roundingMode,
    this.scale,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?pulumi.Input.mapOptionalInputValue<TableFieldSchemaCategories, Map<String, dynamic>>(categories, (value) => value.toMap()),
      'collation': ?collation,
      'defaultValueExpression': ?defaultValueExpression,
      'description': ?description,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<TableFieldSchema>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<TableFieldSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxLength': ?maxLength,
      'mode': ?mode,
      'name': ?name,
      'policyTags': ?pulumi.Input.mapOptionalInputValue<TableFieldSchemaPolicyTags, Map<String, dynamic>>(policyTags, (value) => value.toMap()),
      'precision': ?precision,
      'rangeElementType': ?pulumi.Input.mapOptionalInputValue<TableFieldSchemaRangeElementType, Map<String, dynamic>>(rangeElementType, (value) => value.toMap()),
      'roundingMode': ?roundingMode,
      'scale': ?scale,
      'type': ?type,
    };
  }

  factory TableFieldSchema.fromMap(Map<String, dynamic> map) {
    return TableFieldSchema(
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableFieldSchemaCategories.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultValueExpression: (() { final guardedValue = map['defaultValueExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableFieldSchema>(guardedValue, (value) => TableFieldSchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxLength: (() { final guardedValue = map['maxLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyTags: (() { final guardedValue = map['policyTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableFieldSchemaPolicyTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      precision: (() { final guardedValue = map['precision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeElementType: (() { final guardedValue = map['rangeElementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableFieldSchemaRangeElementType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roundingMode: (() { final guardedValue = map['roundingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
