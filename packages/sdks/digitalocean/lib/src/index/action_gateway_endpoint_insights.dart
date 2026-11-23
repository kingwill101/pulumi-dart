// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGatewayEndpointInsights {
  /// Whether the endpoint's logs are sent to Insights. Your team can require this to be on for every endpoint; turning it off is then refused.
  final pulumi.Input<bool?>? logs;
  /// Whether the endpoint's metrics are sent to Insights.
  final pulumi.Input<bool?>? metrics;
  /// Whether the endpoint's traces are sent to Insights.
  ///
  /// Each signal is optional and computed, so an omitted signal keeps the value the
  /// endpoint already stores instead of resetting it.
  final pulumi.Input<bool?>? traces;

  /// Creates a new [ActionGatewayEndpointInsights].
  /// [logs] Whether the endpoint's logs are sent to Insights. Your team can require this to be on for every endpoint; turning it off is then refused.
  /// [metrics] Whether the endpoint's metrics are sent to Insights.
  /// [traces] Whether the endpoint's traces are sent to Insights.
  const ActionGatewayEndpointInsights({
    this.logs,
    this.metrics,
    this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?logs,
      'metrics': ?metrics,
      'traces': ?traces,
    };
  }

  factory ActionGatewayEndpointInsights.fromMap(Map<String, dynamic> map) {
    return ActionGatewayEndpointInsights(
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      traces: (() { final guardedValue = map['traces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
