// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Table display options that can be reused.
class TableDisplayOptions {
  /// Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings
  final pulumi.Input<List<String>>? shownColumns;

  /// Creates a new [TableDisplayOptions].
  /// [shownColumns] Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings
  TableDisplayOptions({
    this.shownColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shownColumns': ?shownColumns,
    };
  }

  factory TableDisplayOptions.fromMap(Map<String, dynamic> map) {
    return TableDisplayOptions(
      shownColumns: map['shownColumns'] == null ? null : ((map['shownColumns'] as List).cast<String>()).input(),
    );
  }
}

