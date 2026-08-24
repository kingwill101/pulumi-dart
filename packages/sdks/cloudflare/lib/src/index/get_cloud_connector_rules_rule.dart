// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_connector_rules_rule_parameters.dart';

class GetCloudConnectorRulesRule {
  final pulumi.Input<String> description;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> expression;
  final pulumi.Input<String> id;
  /// Parameters of Cloud Connector Rule
  final pulumi.Input<GetCloudConnectorRulesRuleParameters> parameters;
  /// Cloud Provider type
  /// Available values: "aws*s3", "cloudflare*r2", "gcp*storage", "azure*storage".
  final pulumi.Input<String> provider;

  /// Creates a new [GetCloudConnectorRulesRule].
  /// [description] Required.
  /// [enabled] Required.
  /// [expression] Required.
  /// [id] Required.
  /// [parameters] Parameters of Cloud Connector Rule
  /// [provider] Cloud Provider type
  const GetCloudConnectorRulesRule({
    required this.description,
    required this.enabled,
    required this.expression,
    required this.id,
    required this.parameters,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enabled': enabled,
      'expression': expression,
      'id': id,
      'parameters': pulumi.Input.mapInputValue<GetCloudConnectorRulesRuleParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'provider': provider,
    };
  }

  factory GetCloudConnectorRulesRule.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorRulesRule(
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      parameters: pulumi.Input.fromValue(GetCloudConnectorRulesRuleParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
      provider: pulumi.Input.fromValue(map['provider'] as String),
    );
  }
}
