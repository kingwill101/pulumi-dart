// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGatewayEndpointInsight {
  /// Whether the endpoint's logs are sent to Insights. Your team can require this to be on.
  final pulumi.Input<bool> logs;
  /// Whether the endpoint's metrics are sent to Insights
  final pulumi.Input<bool> metrics;
  /// Whether the endpoint's traces are sent to Insights
  final pulumi.Input<bool> traces;

  /// Creates a new [GetActionGatewayEndpointInsight].
  /// [logs] Whether the endpoint's logs are sent to Insights. Your team can require this to be on.
  /// [metrics] Whether the endpoint's metrics are sent to Insights
  /// [traces] Whether the endpoint's traces are sent to Insights
  const GetActionGatewayEndpointInsight({
    required this.logs,
    required this.metrics,
    required this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': logs,
      'metrics': metrics,
      'traces': traces,
    };
  }

  factory GetActionGatewayEndpointInsight.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayEndpointInsight(
      logs: pulumi.Input.fromValue(map['logs'] as bool),
      metrics: pulumi.Input.fromValue(map['metrics'] as bool),
      traces: pulumi.Input.fromValue(map['traces'] as bool),
    );
  }
}
