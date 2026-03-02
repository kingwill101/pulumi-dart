// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_data_type.dart';

/// A field or a column.
class StandardSqlField {
  /// Optional. The name of this field. Can be absent for struct fields.
  final pulumi.Input<String>? name;
  /// Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION statement can omit the return type; in this case the output parameter does not have this "type" field).
  final pulumi.Input<StandardSqlDataType>? type;

  /// Creates a new [StandardSqlField].
  /// [name] Optional. The name of this field. Can be absent for struct fields.
  /// [type] Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION statement can omit the return type; in this case the output parameter does not have this "type" field).
  StandardSqlField({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?pulumi.Input.mapOptionalInputValue<StandardSqlDataType, Map<String, dynamic>>(type, (value) => value.toMap()),
    };
  }

  factory StandardSqlField.fromMap(Map<String, dynamic> map) {
    return StandardSqlField(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (StandardSqlDataType.fromMap((map['type'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

