// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_field_response.dart';

/// The representation of a SQL STRUCT type.
class StandardSqlStructTypeResponse {
  /// Fields within the struct.
  final pulumi.Input<List<StandardSqlFieldResponse>> fields;

  /// Creates a new [StandardSqlStructTypeResponse].
  /// [fields] Fields within the struct.
  const StandardSqlStructTypeResponse({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<StandardSqlFieldResponse>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<StandardSqlFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StandardSqlStructTypeResponse.fromMap(Map<String, dynamic> map) {
    return StandardSqlStructTypeResponse(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<StandardSqlFieldResponse>(map['fields']!, (value) => StandardSqlFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
