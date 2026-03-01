// ignore_for_file: unused_element, unnecessary_cast

import 'aggregation_function_response.dart';

/// Preview: A breakdown is an aggregation applied to the measures over a specified column. A breakdown can result in multiple series across a category for the provided measure. This is a preview feature and may be subject to change before final release.
class BreakdownResponse {
  /// The Aggregation function is applied across all data in each breakdown created.
  final AggregationFunctionResponse aggregationFunction;
  /// The name of the column in the dataset containing the breakdown values.
  final String column;
  /// A limit to the number of breakdowns. If set to zero then all possible breakdowns are applied. The list of breakdowns is dependent on the value of the sort_order field.
  final int limit;
  /// The sort order is applied to the values of the breakdown column.
  final String sortOrder;

  /// Creates a new [BreakdownResponse].
  /// [aggregationFunction] The Aggregation function is applied across all data in each breakdown created.
  /// [column] The name of the column in the dataset containing the breakdown values.
  /// [limit] A limit to the number of breakdowns. If set to zero then all possible breakdowns are applied. The list of breakdowns is dependent on the value of the sort_order field.
  /// [sortOrder] The sort order is applied to the values of the breakdown column.
  BreakdownResponse({
    required this.aggregationFunction,
    required this.column,
    required this.limit,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationFunction': aggregationFunction.toMap(),
      'column': column,
      'limit': limit,
      'sortOrder': sortOrder,
    };
  }

  factory BreakdownResponse.fromMap(Map<String, dynamic> map) {
    return BreakdownResponse(
      aggregationFunction: AggregationFunctionResponse.fromMap((map['aggregationFunction'] as Map).cast<String, dynamic>()),
      column: map['column'] as String,
      limit: map['limit'] as int,
      sortOrder: map['sortOrder'] as String,
    );
  }
}

