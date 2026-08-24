// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayDynamicRoutingElementProperties {
  final pulumi.Input<String> aiGatewayDynamicRoutingProvider;
  final pulumi.Input<String> conditions;
  final pulumi.Input<String> key;
  final pulumi.Input<double> limit;
  /// Available values: "count", "cost".
  final pulumi.Input<String> limitType;
  final pulumi.Input<String> model;
  final pulumi.Input<double> retries;
  final pulumi.Input<double> timeout;
  final pulumi.Input<double> window;

  /// Creates a new [GetAiGatewayDynamicRoutingElementProperties].
  /// [aiGatewayDynamicRoutingProvider] Required.
  /// [conditions] Required.
  /// [key] Required.
  /// [limit] Required.
  /// [limitType] Available values: "count", "cost".
  /// [model] Required.
  /// [retries] Required.
  /// [timeout] Required.
  /// [window] Required.
  const GetAiGatewayDynamicRoutingElementProperties({
    required this.aiGatewayDynamicRoutingProvider,
    required this.conditions,
    required this.key,
    required this.limit,
    required this.limitType,
    required this.model,
    required this.retries,
    required this.timeout,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiGatewayDynamicRoutingProvider': aiGatewayDynamicRoutingProvider,
      'conditions': conditions,
      'key': key,
      'limit': limit,
      'limitType': limitType,
      'model': model,
      'retries': retries,
      'timeout': timeout,
      'window': window,
    };
  }

  factory GetAiGatewayDynamicRoutingElementProperties.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingElementProperties(
      aiGatewayDynamicRoutingProvider: pulumi.Input.fromValue(map['aiGatewayDynamicRoutingProvider'] as String),
      conditions: pulumi.Input.fromValue(map['conditions'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      limit: pulumi.Input.fromValue((map['limit'] as num).toDouble()),
      limitType: pulumi.Input.fromValue(map['limitType'] as String),
      model: pulumi.Input.fromValue(map['model'] as String),
      retries: pulumi.Input.fromValue((map['retries'] as num).toDouble()),
      timeout: pulumi.Input.fromValue((map['timeout'] as num).toDouble()),
      window: pulumi.Input.fromValue((map['window'] as num).toDouble()),
    );
  }
}
