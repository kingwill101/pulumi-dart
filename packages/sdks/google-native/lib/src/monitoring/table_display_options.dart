// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Table display options that can be reused.
class TableDisplayOptions {
  /// Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings
  final pulumi.Input<List<String>>? shownColumns;

  /// Creates a new [TableDisplayOptions].
  /// [shownColumns] Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings
  const TableDisplayOptions({
    this.shownColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shownColumns': ?shownColumns,
    };
  }

  factory TableDisplayOptions.fromMap(Map<String, dynamic> map) {
    return TableDisplayOptions(
      shownColumns: (() { final guardedValue = map['shownColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

