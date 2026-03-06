// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to configure rule type FilterTableColumns. The rule is used to filter the list of columns to include or exclude from a table. The rule filter field can refer to one entity. The rule scope can be: Table Only one of the two lists can be specified for the rule.
class FilterTableColumnsResponse {
  /// Optional. List of columns to be excluded for a particular table.
  final pulumi.Input<List<String>> excludeColumns;
  /// Optional. List of columns to be included for a particular table.
  final pulumi.Input<List<String>> includeColumns;

  /// Creates a new [FilterTableColumnsResponse].
  /// [excludeColumns] Optional. List of columns to be excluded for a particular table.
  /// [includeColumns] Optional. List of columns to be included for a particular table.
  const FilterTableColumnsResponse({
    required this.excludeColumns,
    required this.includeColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeColumns': excludeColumns,
      'includeColumns': includeColumns,
    };
  }

  factory FilterTableColumnsResponse.fromMap(Map<String, dynamic> map) {
    return FilterTableColumnsResponse(
      excludeColumns: pulumi.Input.fromValue((map['excludeColumns'] as List).cast<String>()),
      includeColumns: pulumi.Input.fromValue((map['includeColumns'] as List).cast<String>()),
    );
  }
}

