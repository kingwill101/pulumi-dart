// ignore_for_file: unused_element, unnecessary_cast


/// The graph query to show the volume of data arriving into the workspace over time.
class GraphQueryResponse {
  /// Gets or sets the base query for the graph.
  /// The base query is wrapped by Sentinel UI infra with a KQL query, that measures the volume over time.
  final String baseQuery;
  /// Gets or sets the legend for the graph.
  final String legend;
  /// Gets or sets the metric name that the query is checking. For example: 'Total data receive'.
  final String metricName;

  /// Creates a new [GraphQueryResponse].
  /// [baseQuery] Gets or sets the base query for the graph.
  /// [legend] Gets or sets the legend for the graph.
  /// [metricName] Gets or sets the metric name that the query is checking. For example: 'Total data receive'.
  GraphQueryResponse({
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
      baseQuery: map['baseQuery'] as String,
      legend: map['legend'] as String,
      metricName: map['metricName'] as String,
    );
  }
}

