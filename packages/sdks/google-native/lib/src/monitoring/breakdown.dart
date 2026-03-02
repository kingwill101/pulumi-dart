// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregation_function.dart';
import 'breakdown_sort_order.dart';

/// Preview: A breakdown is an aggregation applied to the measures over a specified column. A breakdown can result in multiple series across a category for the provided measure. This is a preview feature and may be subject to change before final release.
class Breakdown {
  /// The Aggregation function is applied across all data in each breakdown created.
  final pulumi.Input<AggregationFunction> aggregationFunction;
  /// The name of the column in the dataset containing the breakdown values.
  final pulumi.Input<String> column;
  /// A limit to the number of breakdowns. If set to zero then all possible breakdowns are applied. The list of breakdowns is dependent on the value of the sort_order field.
  final pulumi.Input<int> limit;
  /// The sort order is applied to the values of the breakdown column.
  final pulumi.Input<BreakdownSortOrder> sortOrder;

  /// Creates a new [Breakdown].
  /// [aggregationFunction] The Aggregation function is applied across all data in each breakdown created.
  /// [column] The name of the column in the dataset containing the breakdown values.
  /// [limit] A limit to the number of breakdowns. If set to zero then all possible breakdowns are applied. The list of breakdowns is dependent on the value of the sort_order field.
  /// [sortOrder] The sort order is applied to the values of the breakdown column.
  Breakdown({
    required this.aggregationFunction,
    required this.column,
    required this.limit,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationFunction': pulumi.Input.mapInputValue<AggregationFunction, Map<String, dynamic>>(aggregationFunction, (value) => value.toMap()),
      'column': column,
      'limit': limit,
      'sortOrder': pulumi.Input.mapInputValue<BreakdownSortOrder, String>(sortOrder, (value) => value.value),
    };
  }

  factory Breakdown.fromMap(Map<String, dynamic> map) {
    return Breakdown(
      aggregationFunction: (AggregationFunction.fromMap((map['aggregationFunction'] as Map).cast<String, dynamic>())).input(),
      column: (map['column'] as String).input(),
      limit: (map['limit'] as int).input(),
      sortOrder: (BreakdownSortOrder.fromValue(map['sortOrder'] as String)).input(),
    );
  }
}

