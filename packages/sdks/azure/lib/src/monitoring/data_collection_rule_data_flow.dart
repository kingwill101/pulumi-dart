// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDataFlow {
  /// The built-in transform to transform stream data.
  final pulumi.Input<String>? builtInTransform;

  /// Specifies a list of destination names. A `azure_monitor_metrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  final pulumi.Input<List<String>> destinations;

  /// The output stream of the transform. Only required if the data flow changes data to a different stream.
  final pulumi.Input<String>? outputStream;

  /// Specifies a list of streams. Possible values include but not limited to `Microsoft-Event`, `Microsoft-InsightsMetrics`, `Microsoft-Perf`, `Microsoft-Syslog`, `Microsoft-WindowsEvent`, and `Microsoft-PrometheusMetrics`.
  final pulumi.Input<List<String>> streams;

  /// The KQL query to transform stream data.
  final pulumi.Input<String>? transformKql;

  /// Creates a new [DataCollectionRuleDataFlow].
  /// [builtInTransform] The built-in transform to transform stream data.
  /// [destinations] Specifies a list of destination names. A `azure_monitor_metrics` data source only allows for stream of kind `Microsoft-InsightsMetrics`.
  /// [outputStream] The output stream of the transform. Only required if the data flow changes data to a different stream.
  /// [streams] Specifies a list of streams. Possible values include but not limited to `Microsoft-Event`, `Microsoft-InsightsMetrics`, `Microsoft-Perf`, `Microsoft-Syslog`, `Microsoft-WindowsEvent`, and `Microsoft-PrometheusMetrics`.
  /// [transformKql] The KQL query to transform stream data.
  DataCollectionRuleDataFlow({
    this.builtInTransform,
    required this.destinations,
    this.outputStream,
    required this.streams,
    this.transformKql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInTransform': ?builtInTransform,
      'destinations': destinations,
      'outputStream': ?outputStream,
      'streams': streams,
      'transformKql': ?transformKql,
    };
  }

  factory DataCollectionRuleDataFlow.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataFlow(
      builtInTransform: (() {
        final guardedValue = map['builtInTransform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinations: pulumi.Input.fromValue(
        (map['destinations'] as List).cast<String>(),
      ),
      outputStream: (() {
        final guardedValue = map['outputStream'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
      transformKql: (() {
        final guardedValue = map['transformKql'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
