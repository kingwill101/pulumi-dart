// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_data_type_response.dart';

/// A field or a column.
class StandardSqlFieldResponse {
  /// Optional. The name of this field. Can be absent for struct fields.
  final pulumi.Input<String> name;
  /// Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION statement can omit the return type; in this case the output parameter does not have this "type" field).
  final pulumi.Input<StandardSqlDataTypeResponse> type;

  /// Creates a new [StandardSqlFieldResponse].
  /// [name] Optional. The name of this field. Can be absent for struct fields.
  /// [type] Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION statement can omit the return type; in this case the output parameter does not have this "type" field).
  StandardSqlFieldResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': pulumi.Input.mapInputValue<StandardSqlDataTypeResponse, Map<String, dynamic>>(type, (value) => value.toMap()),
    };
  }

  factory StandardSqlFieldResponse.fromMap(Map<String, dynamic> map) {
    return StandardSqlFieldResponse(
      name: (map['name'] as String).input(),
      type: (StandardSqlDataTypeResponse.fromMap((map['type'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

