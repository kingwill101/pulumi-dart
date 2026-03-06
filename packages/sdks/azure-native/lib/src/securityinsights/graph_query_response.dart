// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The graph query to show the volume of data arriving into the workspace over time.
class GraphQueryResponse {
  /// Gets or sets the base query for the graph.
  /// The base query is wrapped by Sentinel UI infra with a KQL query, that measures the volume over time.
  final pulumi.Input<String> baseQuery;
  /// Gets or sets the legend for the graph.
  final pulumi.Input<String> legend;
  /// Gets or sets the metric name that the query is checking. For example: 'Total data receive'.
  final pulumi.Input<String> metricName;

  /// Creates a new [GraphQueryResponse].
  /// [baseQuery] Gets or sets the base query for the graph.
  /// [legend] Gets or sets the legend for the graph.
  /// [metricName] Gets or sets the metric name that the query is checking. For example: 'Total data receive'.
  const GraphQueryResponse({
    required this.baseQuery,
    required this.legend,
    required this.metricName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseQuery': baseQuery,
      'legend': legend,
      'metricName': metricName,
    };
  }

  factory GraphQueryResponse.fromMap(Map<String, dynamic> map) {
    return GraphQueryResponse(
      baseQuery: pulumi.Input.fromValue(map['baseQuery'] as String),
      legend: pulumi.Input.fromValue(map['legend'] as String),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
    );
  }
}

