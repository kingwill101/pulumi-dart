// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateways_result_spend_limits_rule_ai_gateway_provider.dart';
import 'get_ai_gateways_result_spend_limits_rule_metadata.dart';
import 'get_ai_gateways_result_spend_limits_rule_model.dart';

class GetAiGatewaysResultSpendLimitsRule {
  final pulumi.Input<GetAiGatewaysResultSpendLimitsRuleAiGatewayProvider> aiGatewayProvider;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> id;
  final pulumi.Input<double> limit;
  /// Available values: "cost".
  final pulumi.Input<String> limitType;
  final pulumi.Input<Map<String, GetAiGatewaysResultSpendLimitsRuleMetadata>> metadata;
  final pulumi.Input<GetAiGatewaysResultSpendLimitsRuleModel> model;
  /// Available values: "fixed", "sliding".
  final pulumi.Input<String> technique;
  final pulumi.Input<int> window;

  /// Creates a new [GetAiGatewaysResultSpendLimitsRule].
  /// [aiGatewayProvider] Required.
  /// [enabled] Required.
  /// [id] Required.
  /// [limit] Required.
  /// [limitType] Available values: "cost".
  /// [metadata] Required.
  /// [model] Required.
  /// [technique] Available values: "fixed", "sliding".
  /// [window] Required.
  const GetAiGatewaysResultSpendLimitsRule({
    required this.aiGatewayProvider,
    required this.enabled,
    required this.id,
    required this.limit,
    required this.limitType,
    required this.metadata,
    required this.model,
    required this.technique,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiGatewayProvider': pulumi.Input.mapInputValue<GetAiGatewaysResultSpendLimitsRuleAiGatewayProvider, Map<String, dynamic>>(aiGatewayProvider, (value) => value.toMap()),
      'enabled': enabled,
      'id': id,
      'limit': limit,
      'limitType': limitType,
      'metadata': pulumi.Input.mapInputValue<Map<String, GetAiGatewaysResultSpendLimitsRuleMetadata>, Map<String, Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeMapValues<GetAiGatewaysResultSpendLimitsRuleMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'model': pulumi.Input.mapInputValue<GetAiGatewaysResultSpendLimitsRuleModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'technique': technique,
      'window': window,
    };
  }

  factory GetAiGatewaysResultSpendLimitsRule.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysResultSpendLimitsRule(
      aiGatewayProvider: pulumi.Input.fromValue(GetAiGatewaysResultSpendLimitsRuleAiGatewayProvider.fromMap((map['aiGatewayProvider']! as Map).cast<String, dynamic>())),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      limit: pulumi.Input.fromValue((map['limit'] as num).toDouble()),
      limitType: pulumi.Input.fromValue(map['limitType'] as String),
      metadata: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetAiGatewaysResultSpendLimitsRuleMetadata>(map['metadata']!, (value) => GetAiGatewaysResultSpendLimitsRuleMetadata.fromMap((value as Map).cast<String, dynamic>()))),
      model: pulumi.Input.fromValue(GetAiGatewaysResultSpendLimitsRuleModel.fromMap((map['model']! as Map).cast<String, dynamic>())),
      technique: pulumi.Input.fromValue(map['technique'] as String),
      window: pulumi.Input.fromValue((map['window'] as num).toInt()),
    );
  }
}
