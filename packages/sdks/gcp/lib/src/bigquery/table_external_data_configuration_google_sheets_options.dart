// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableExternalDataConfigurationGoogleSheetsOptions {
  /// Range of a sheet to query from. Only used when
  /// non-empty. At least one of `range` or `skipLeadingRows` must be set.
  /// Typical format: "sheet_name!top_left_cell_id:bottom_right_cell_id"
  /// For example: "sheet1!A1:B20"
  final pulumi.Input<String?>? range;
  /// The number of rows at the top of the sheet
  /// that BigQuery will skip when reading the data. At least one of `range` or
  /// `skipLeadingRows` must be set.
  final pulumi.Input<int?>? skipLeadingRows;

  /// Creates a new [TableExternalDataConfigurationGoogleSheetsOptions].
  /// [range] Range of a sheet to query from. Only used when
  /// [skipLeadingRows] The number of rows at the top of the sheet
  const TableExternalDataConfigurationGoogleSheetsOptions({
    this.range,
    this.skipLeadingRows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': ?range,
      'skipLeadingRows': ?skipLeadingRows,
    };
  }

  factory TableExternalDataConfigurationGoogleSheetsOptions.fromMap(Map<String, dynamic> map) {
    return TableExternalDataConfigurationGoogleSheetsOptions(
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipLeadingRows: (() { final guardedValue = map['skipLeadingRows']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
