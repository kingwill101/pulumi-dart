// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_field_schema_categories_response.dart';
import 'table_field_schema_policy_tags_response.dart';
import 'table_field_schema_range_element_type_response.dart';

class TableFieldSchemaResponse {
  /// [Optional] The categories attached to this field, used for field-level access control.
  final pulumi.Input<TableFieldSchemaCategoriesResponse> categories;
  /// Optional. Collation specification of the field. It only can be set on string type field.
  final pulumi.Input<String> collation;
  /// Optional. A SQL expression to specify the default value for this field. It can only be set for top level fields (columns). You can use struct or array expression to specify default value for the entire struct or array. The valid SQL expressions are: - Literals for all data types, including STRUCT and ARRAY. - Following functions: - CURRENT_TIMESTAMP - CURRENT_TIME - CURRENT_DATE - CURRENT_DATETIME - GENERATE_UUID - RAND - SESSION_USER - ST_GEOGPOINT - Struct or array composed with the above allowed functions, for example, [CURRENT_DATE(), DATE '2020-01-01']
  final pulumi.Input<String> defaultValueExpression;
  /// [Optional] The field description. The maximum length is 1,024 characters.
  final pulumi.Input<String> description;
  /// [Optional] Describes the nested schema fields if the type property is set to RECORD.
  final pulumi.Input<List<TableFieldSchemaResponse>> fields;
  /// [Optional] Maximum length of values of this field for STRINGS or BYTES. If max_length is not specified, no maximum length constraint is imposed on this field. If type = "STRING", then max_length represents the maximum UTF-8 length of strings in this field. If type = "BYTES", then max_length represents the maximum number of bytes in this field. It is invalid to set this field if type ≠ "STRING" and ≠ "BYTES".
  final pulumi.Input<String> maxLength;
  /// [Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE.
  final pulumi.Input<String> mode;
  /// [Required] The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 300 characters.
  final pulumi.Input<String> name;
  final pulumi.Input<TableFieldSchemaPolicyTagsResponse> policyTags;
  /// [Optional] Precision (maximum number of total digits in base 10) and scale (maximum number of digits in the fractional part in base 10) constraints for values of this field for NUMERIC or BIGNUMERIC. It is invalid to set precision or scale if type ≠ "NUMERIC" and ≠ "BIGNUMERIC". If precision and scale are not specified, no value range constraint is imposed on this field insofar as values are permitted by the type. Values of this NUMERIC or BIGNUMERIC field must be in this range when: - Precision (P) and scale (S) are specified: [-10P-S + 10-S, 10P-S - 10-S] - Precision (P) is specified but not scale (and thus scale is interpreted to be equal to zero): [-10P + 1, 10P - 1]. Acceptable values for precision and scale if both are specified: - If type = "NUMERIC": 1 ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. - If type = "BIGNUMERIC": 1 ≤ precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision if only precision is specified but not scale (and thus scale is interpreted to be equal to zero): - If type = "NUMERIC": 1 ≤ precision ≤ 29. - If type = "BIGNUMERIC": 1 ≤ precision ≤ 38. If scale is specified but not precision, then it is invalid.
  final pulumi.Input<String> precision;
  /// Optional. The subtype of the RANGE, if the type of this field is RANGE. If the type is RANGE, this field is required. Possible values for the field element type of a RANGE include: - DATE - DATETIME - TIMESTAMP
  final pulumi.Input<TableFieldSchemaRangeElementTypeResponse> rangeElementType;
  /// Optional. Rounding Mode specification of the field. It only can be set on NUMERIC or BIGNUMERIC type fields.
  final pulumi.Input<String> roundingMode;
  /// [Optional] See documentation for precision.
  final pulumi.Input<String> scale;
  /// [Required] The field data type. Possible values include STRING, BYTES, INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT), NUMERIC, BIGNUMERIC, BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, INTERVAL, RECORD (where RECORD indicates that the field contains a nested schema) or STRUCT (same as RECORD).
  final pulumi.Input<String> type;

  /// Creates a new [TableFieldSchemaResponse].
  /// [categories] [Optional] The categories attached to this field, used for field-level access control.
  /// [collation] Optional. Collation specification of the field. It only can be set on string type field.
  /// [defaultValueExpression] Optional. A SQL expression to specify the default value for this field. It can only be set for top level fields (columns). You can use struct or array expression to specify default value for the entire struct or array. The valid SQL expressions are: - Literals for all data types, including STRUCT and ARRAY. - Following functions: - CURRENT_TIMESTAMP - CURRENT_TIME - CURRENT_DATE - CURRENT_DATETIME - GENERATE_UUID - RAND - SESSION_USER - ST_GEOGPOINT - Struct or array composed with the above allowed functions, for example, [CURRENT_DATE(), DATE '2020-01-01']
  /// [description] [Optional] The field description. The maximum length is 1,024 characters.
  /// [fields] [Optional] Describes the nested schema fields if the type property is set to RECORD.
  /// [maxLength] [Optional] Maximum length of values of this field for STRINGS or BYTES. If max_length is not specified, no maximum length constraint is imposed on this field. If type = "STRING", then max_length represents the maximum UTF-8 length of strings in this field. If type = "BYTES", then max_length represents the maximum number of bytes in this field. It is invalid to set this field if type ≠ "STRING" and ≠ "BYTES".
  /// [mode] [Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE.
  /// [name] [Required] The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 300 characters.
  /// [policyTags] Required.
  /// [precision] [Optional] Precision (maximum number of total digits in base 10) and scale (maximum number of digits in the fractional part in base 10) constraints for values of this field for NUMERIC or BIGNUMERIC. It is invalid to set precision or scale if type ≠ "NUMERIC" and ≠ "BIGNUMERIC". If precision and scale are not specified, no value range constraint is imposed on this field insofar as values are permitted by the type. Values of this NUMERIC or BIGNUMERIC field must be in this range when: - Precision (P) and scale (S) are specified: [-10P-S + 10-S, 10P-S - 10-S] - Precision (P) is specified but not scale (and thus scale is interpreted to be equal to zero): [-10P + 1, 10P - 1]. Acceptable values for precision and scale if both are specified: - If type = "NUMERIC": 1 ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. - If type = "BIGNUMERIC": 1 ≤ precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision if only precision is specified but not scale (and thus scale is interpreted to be equal to zero): - If type = "NUMERIC": 1 ≤ precision ≤ 29. - If type = "BIGNUMERIC": 1 ≤ precision ≤ 38. If scale is specified but not precision, then it is invalid.
  /// [rangeElementType] Optional. The subtype of the RANGE, if the type of this field is RANGE. If the type is RANGE, this field is required. Possible values for the field element type of a RANGE include: - DATE - DATETIME - TIMESTAMP
  /// [roundingMode] Optional. Rounding Mode specification of the field. It only can be set on NUMERIC or BIGNUMERIC type fields.
  /// [scale] [Optional] See documentation for precision.
  /// [type] [Required] The field data type. Possible values include STRING, BYTES, INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT), NUMERIC, BIGNUMERIC, BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, INTERVAL, RECORD (where RECORD indicates that the field contains a nested schema) or STRUCT (same as RECORD).
  TableFieldSchemaResponse({
    required this.categories,
    required this.collation,
    required this.defaultValueExpression,
    required this.description,
    required this.fields,
    required this.maxLength,
    required this.mode,
    required this.name,
    required this.policyTags,
    required this.precision,
    required this.rangeElementType,
    required this.roundingMode,
    required this.scale,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': pulumi.Input.mapInputValue<TableFieldSchemaCategoriesResponse, Map<String, dynamic>>(categories, (value) => value.toMap()),
      'collation': collation,
      'defaultValueExpression': defaultValueExpression,
      'description': description,
      'fields': pulumi.Input.mapInputValue<List<TableFieldSchemaResponse>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<TableFieldSchemaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxLength': maxLength,
      'mode': mode,
      'name': name,
      'policyTags': pulumi.Input.mapInputValue<TableFieldSchemaPolicyTagsResponse, Map<String, dynamic>>(policyTags, (value) => value.toMap()),
      'precision': precision,
      'rangeElementType': pulumi.Input.mapInputValue<TableFieldSchemaRangeElementTypeResponse, Map<String, dynamic>>(rangeElementType, (value) => value.toMap()),
      'roundingMode': roundingMode,
      'scale': scale,
      'type': type,
    };
  }

  factory TableFieldSchemaResponse.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaResponse(
      categories: pulumi.Input.fromValue(TableFieldSchemaCategoriesResponse.fromMap((map['categories']! as Map).cast<String, dynamic>())),
      collation: pulumi.Input.fromValue(map['collation'] as String),
      defaultValueExpression: pulumi.Input.fromValue(map['defaultValueExpression'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<TableFieldSchemaResponse>(map['fields']!, (value) => TableFieldSchemaResponse.fromMap((value as Map).cast<String, dynamic>()))),
      maxLength: pulumi.Input.fromValue(map['maxLength'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policyTags: pulumi.Input.fromValue(TableFieldSchemaPolicyTagsResponse.fromMap((map['policyTags']! as Map).cast<String, dynamic>())),
      precision: pulumi.Input.fromValue(map['precision'] as String),
      rangeElementType: pulumi.Input.fromValue(TableFieldSchemaRangeElementTypeResponse.fromMap((map['rangeElementType']! as Map).cast<String, dynamic>())),
      roundingMode: pulumi.Input.fromValue(map['roundingMode'] as String),
      scale: pulumi.Input.fromValue(map['scale'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

