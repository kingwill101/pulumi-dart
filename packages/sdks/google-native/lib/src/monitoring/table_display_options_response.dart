// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Table display options that can be reused.
class TableDisplayOptionsResponse {
  /// Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings
  final pulumi.Input<List<String>> shownColumns;

  /// Creates a new [TableDisplayOptionsResponse].
  /// [shownColumns] Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings
  const TableDisplayOptionsResponse({
    required this.shownColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shownColumns': shownColumns,
    };
  }

  factory TableDisplayOptionsResponse.fromMap(Map<String, dynamic> map) {
    return TableDisplayOptionsResponse(
      shownColumns: pulumi.Input.fromValue((map['shownColumns'] as List).cast<String>()),
    );
  }
}
