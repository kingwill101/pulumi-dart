// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to configure rule type FilterTableColumns. The rule is used to filter the list of columns to include or exclude from a table. The rule filter field can refer to one entity. The rule scope can be: Table Only one of the two lists can be specified for the rule.
class FilterTableColumns {
  /// Optional. List of columns to be excluded for a particular table.
  final pulumi.Input<List<String>>? excludeColumns;
  /// Optional. List of columns to be included for a particular table.
  final pulumi.Input<List<String>>? includeColumns;

  /// Creates a new [FilterTableColumns].
  /// [excludeColumns] Optional. List of columns to be excluded for a particular table.
  /// [includeColumns] Optional. List of columns to be included for a particular table.
  FilterTableColumns({
    this.excludeColumns,
    this.includeColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeColumns': ?excludeColumns,
      'includeColumns': ?includeColumns,
    };
  }

  factory FilterTableColumns.fromMap(Map<String, dynamic> map) {
    return FilterTableColumns(
      excludeColumns: map['excludeColumns'] == null ? null : ((map['excludeColumns']! as List).cast<String>()).input(),
      includeColumns: map['includeColumns'] == null ? null : ((map['includeColumns']! as List).cast<String>()).input(),
    );
  }
}

