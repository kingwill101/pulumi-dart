// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingElementProperties {
  final pulumi.Input<String?>? aiGatewayDynamicRoutingProvider;
  final pulumi.Input<String?>? conditions;
  final pulumi.Input<String?>? key;
  final pulumi.Input<double?>? limit;
  /// Available values: "count", "cost".
  final pulumi.Input<String?>? limitType;
  final pulumi.Input<String?>? model;
  final pulumi.Input<double?>? retries;
  final pulumi.Input<double?>? timeout;
  final pulumi.Input<double?>? window;

  /// Creates a new [AiGatewayDynamicRoutingElementProperties].
  /// [aiGatewayDynamicRoutingProvider] Optional.
  /// [conditions] Optional.
  /// [key] Optional.
  /// [limit] Optional.
  /// [limitType] Available values: "count", "cost".
  /// [model] Optional.
  /// [retries] Optional.
  /// [timeout] Optional.
  /// [window] Optional.
  const AiGatewayDynamicRoutingElementProperties({
    this.aiGatewayDynamicRoutingProvider,
    this.conditions,
    this.key,
    this.limit,
    this.limitType,
    this.model,
    this.retries,
    this.timeout,
    this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiGatewayDynamicRoutingProvider': ?aiGatewayDynamicRoutingProvider,
      'conditions': ?conditions,
      'key': ?key,
      'limit': ?limit,
      'limitType': ?limitType,
      'model': ?model,
      'retries': ?retries,
      'timeout': ?timeout,
      'window': ?window,
    };
  }

  factory AiGatewayDynamicRoutingElementProperties.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingElementProperties(
      aiGatewayDynamicRoutingProvider: (() { final guardedValue = map['aiGatewayDynamicRoutingProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      limitType: (() { final guardedValue = map['limitType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      window: (() { final guardedValue = map['window']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
