// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_spend_limits_rule_ai_gateway_provider.dart';
import 'ai_gateway_spend_limits_rule_metadata.dart';
import 'ai_gateway_spend_limits_rule_model.dart';

class AiGatewaySpendLimitsRule {
  final pulumi.Input<AiGatewaySpendLimitsRuleAiGatewayProvider?>? aiGatewayProvider;
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String?>? id;
  final pulumi.Input<double> limit;
  /// Available values: "cost".
  final pulumi.Input<String> limitType;
  final pulumi.Input<Map<String, AiGatewaySpendLimitsRuleMetadata>?>? metadata;
  final pulumi.Input<AiGatewaySpendLimitsRuleModel?>? model;
  /// Available values: "fixed", "sliding".
  final pulumi.Input<String?>? technique;
  final pulumi.Input<int> window;

  /// Creates a new [AiGatewaySpendLimitsRule].
  /// [aiGatewayProvider] Optional.
  /// [enabled] Optional.
  /// [id] Optional.
  /// [limit] Required.
  /// [limitType] Available values: "cost".
  /// [metadata] Optional.
  /// [model] Optional.
  /// [technique] Available values: "fixed", "sliding".
  /// [window] Required.
  const AiGatewaySpendLimitsRule({
    this.aiGatewayProvider,
    this.enabled,
    this.id,
    required this.limit,
    required this.limitType,
    this.metadata,
    this.model,
    this.technique,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiGatewayProvider': ?pulumi.Input.mapOptionalInputValue<AiGatewaySpendLimitsRuleAiGatewayProvider, Map<String, dynamic>>(aiGatewayProvider, (value) => value.toMap()),
      'enabled': ?enabled,
      'id': ?id,
      'limit': limit,
      'limitType': limitType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<Map<String, AiGatewaySpendLimitsRuleMetadata>, Map<String, Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeMapValues<AiGatewaySpendLimitsRuleMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'model': ?pulumi.Input.mapOptionalInputValue<AiGatewaySpendLimitsRuleModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'technique': ?technique,
      'window': window,
    };
  }

  factory AiGatewaySpendLimitsRule.fromMap(Map<String, dynamic> map) {
    return AiGatewaySpendLimitsRule(
      aiGatewayProvider: (() { final guardedValue = map['aiGatewayProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewaySpendLimitsRuleAiGatewayProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limit: pulumi.Input.fromValue((map['limit'] as num).toDouble()),
      limitType: pulumi.Input.fromValue(map['limitType'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<AiGatewaySpendLimitsRuleMetadata>(guardedValue, (value) => AiGatewaySpendLimitsRuleMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewaySpendLimitsRuleModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      technique: (() { final guardedValue = map['technique']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      window: pulumi.Input.fromValue((map['window'] as num).toInt()),
    );
  }
}
