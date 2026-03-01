// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDataFlow {
  /// The built-in transform to transform stream data.
  final String builtInTransform;
  /// Specifies a list of destination names. A `azure_monitor_metrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  final List<String> destinations;
  /// The output stream of the transform. Only required if the data flow changes data to a different stream.
  final String outputStream;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final List<String> streams;
  /// The KQL query to transform stream data.
  final String transformKql;

  /// Creates a new [GetDataCollectionRuleDataFlow].
  /// [builtInTransform] The built-in transform to transform stream data.
  /// [destinations] Specifies a list of destination names. A `azure_monitor_metrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  /// [outputStream] The output stream of the transform. Only required if the data flow changes data to a different stream.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  /// [transformKql] The KQL query to transform stream data.
  GetDataCollectionRuleDataFlow({
    required this.builtInTransform,
    required this.destinations,
    required this.outputStream,
    required this.streams,
    required this.transformKql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInTransform': builtInTransform,
      'destinations': destinations,
      'outputStream': outputStream,
      'streams': streams,
      'transformKql': transformKql,
    };
  }

  factory GetDataCollectionRuleDataFlow.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataFlow(
      builtInTransform: map['builtInTransform'] as String,
      destinations: (map['destinations'] as List).cast<String>(),
      outputStream: map['outputStream'] as String,
      streams: (map['streams'] as List).cast<String>(),
      transformKql: map['transformKql'] as String,
    );
  }
}

