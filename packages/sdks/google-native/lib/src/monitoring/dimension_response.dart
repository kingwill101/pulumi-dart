// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preview: A chart dimension for an SQL query. This is applied over the x-axis. This is a preview feature and may be subject to change before final release.
class DimensionResponse {
  /// The name of the column in the source SQL query that is used to chart the dimension.
  final pulumi.Input<String> column;
  /// Optional. The type of the dimension column. This is relevant only if one of the bin_size fields is set. If it is empty, the type TIMESTAMP or INT64 will be assumed based on which bin_size field is set. If populated, this should be set to one of the following types: DATE, TIME, DATETIME, TIMESTAMP, BIGNUMERIC, INT64, NUMERIC, FLOAT64.
  final pulumi.Input<String> columnType;
  /// Optional. float_bin_size is used when the column type used for a dimension is a floating point numeric column.
  final pulumi.Input<double> floatBinSize;
  /// A limit to the number of bins generated. When 0 is specified, the maximum count is not enforced.
  final pulumi.Input<int> maxBinCount;
  /// numeric_bin_size is used when the column type used for a dimension is numeric or string.
  final pulumi.Input<int> numericBinSize;
  /// The column name to sort on for binning. This column can be the same column as this dimension or any other column used as a measure in the results. If sort_order is set to NONE, then this value is not used.
  final pulumi.Input<String> sortColumn;
  /// The sort order applied to the sort column.
  final pulumi.Input<String> sortOrder;
  /// time_bin_size is used when the data type specified by column is a time type and the bin size is determined by a time duration. If column_type is DATE, this must be a whole value multiple of 1 day. If column_type is TIME, this must be less than or equal to 24 hours.
  final pulumi.Input<String> timeBinSize;

  /// Creates a new [DimensionResponse].
  /// [column] The name of the column in the source SQL query that is used to chart the dimension.
  /// [columnType] Optional. The type of the dimension column. This is relevant only if one of the bin_size fields is set. If it is empty, the type TIMESTAMP or INT64 will be assumed based on which bin_size field is set. If populated, this should be set to one of the following types: DATE, TIME, DATETIME, TIMESTAMP, BIGNUMERIC, INT64, NUMERIC, FLOAT64.
  /// [floatBinSize] Optional. float_bin_size is used when the column type used for a dimension is a floating point numeric column.
  /// [maxBinCount] A limit to the number of bins generated. When 0 is specified, the maximum count is not enforced.
  /// [numericBinSize] numeric_bin_size is used when the column type used for a dimension is numeric or string.
  /// [sortColumn] The column name to sort on for binning. This column can be the same column as this dimension or any other column used as a measure in the results. If sort_order is set to NONE, then this value is not used.
  /// [sortOrder] The sort order applied to the sort column.
  /// [timeBinSize] time_bin_size is used when the data type specified by column is a time type and the bin size is determined by a time duration. If column_type is DATE, this must be a whole value multiple of 1 day. If column_type is TIME, this must be less than or equal to 24 hours.
  DimensionResponse({
    required this.column,
    required this.columnType,
    required this.floatBinSize,
    required this.maxBinCount,
    required this.numericBinSize,
    required this.sortColumn,
    required this.sortOrder,
    required this.timeBinSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'columnType': columnType,
      'floatBinSize': floatBinSize,
      'maxBinCount': maxBinCount,
      'numericBinSize': numericBinSize,
      'sortColumn': sortColumn,
      'sortOrder': sortOrder,
      'timeBinSize': timeBinSize,
    };
  }

  factory DimensionResponse.fromMap(Map<String, dynamic> map) {
    return DimensionResponse(
      column: (map['column'] as String).input(),
      columnType: (map['columnType'] as String).input(),
      floatBinSize: (map['floatBinSize'] as double).input(),
      maxBinCount: (map['maxBinCount'] as int).input(),
      numericBinSize: (map['numericBinSize'] as int).input(),
      sortColumn: (map['sortColumn'] as String).input(),
      sortOrder: (map['sortOrder'] as String).input(),
      timeBinSize: (map['timeBinSize'] as String).input(),
    );
  }
}

