// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_table_result_response_columns.dart';

/// Query results for table insights query.
class InsightsTableResultResponse {
  /// Columns Metadata of the table
  final pulumi.Input<List<InsightsTableResultResponseColumns>>? columns;
  /// Rows data of the table
  final pulumi.Input<List<List<String>>>? rows;

  /// Creates a new [InsightsTableResultResponse].
  /// [columns] Columns Metadata of the table
  /// [rows] Rows data of the table
  const InsightsTableResultResponse({
    this.columns,
    this.rows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<InsightsTableResultResponseColumns>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<InsightsTableResultResponseColumns, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rows': ?rows,
    };
  }

  factory InsightsTableResultResponse.fromMap(Map<String, dynamic> map) {
    return InsightsTableResultResponse(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InsightsTableResultResponseColumns>(guardedValue, (value) => InsightsTableResultResponseColumns.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rows: (() { final guardedValue = map['rows']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<List<String>>()); })(),
    );
  }
}
