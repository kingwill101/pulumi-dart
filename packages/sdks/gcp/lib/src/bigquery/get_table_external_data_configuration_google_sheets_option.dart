// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableExternalDataConfigurationGoogleSheetsOption {
  /// Range of a sheet to query from. Only used when non-empty. At least one of range or skip_leading_rows must be set. Typical format: "sheet_name!top_left_cell_id:bottom_right_cell_id" For example: "sheet1!A1:B20
  final pulumi.Input<String> range;
  /// The number of rows at the top of the sheet that BigQuery will skip when reading the data. At least one of range or skip_leading_rows must be set.
  final pulumi.Input<int> skipLeadingRows;

  /// Creates a new [GetTableExternalDataConfigurationGoogleSheetsOption].
  /// [range] Range of a sheet to query from. Only used when non-empty. At least one of range or skip_leading_rows must be set. Typical format: "sheet_name!top_left_cell_id:bottom_right_cell_id" For example: "sheet1!A1:B20
  /// [skipLeadingRows] The number of rows at the top of the sheet that BigQuery will skip when reading the data. At least one of range or skip_leading_rows must be set.
  GetTableExternalDataConfigurationGoogleSheetsOption({
    required this.range,
    required this.skipLeadingRows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
      'skipLeadingRows': skipLeadingRows,
    };
  }

  factory GetTableExternalDataConfigurationGoogleSheetsOption.fromMap(Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationGoogleSheetsOption(
      range: (map['range'] as String).input(),
      skipLeadingRows: (map['skipLeadingRows'] as int).input(),
    );
  }
}

