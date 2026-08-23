// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_field_response.dart';

/// A table type
class StandardSqlTableTypeResponse {
  /// The columns in this table type
  final pulumi.Input<List<StandardSqlFieldResponse>> columns;

  /// Creates a new [StandardSqlTableTypeResponse].
  /// [columns] The columns in this table type
  const StandardSqlTableTypeResponse({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.mapInputValue<List<StandardSqlFieldResponse>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<StandardSqlFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StandardSqlTableTypeResponse.fromMap(Map<String, dynamic> map) {
    return StandardSqlTableTypeResponse(
      columns: pulumi.Input.fromValue(pulumi.Input.decodeList<StandardSqlFieldResponse>(map['columns']!, (value) => StandardSqlFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
