// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_connector_rules_rule_parameters.dart';

class CloudConnectorRulesRule {
  final pulumi.Input<String?>? description;
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String?>? expression;
  final pulumi.Input<String?>? id;
  /// Parameters of Cloud Connector Rule
  final pulumi.Input<CloudConnectorRulesRuleParameters?>? parameters;
  /// Cloud Provider type
  /// Available values: "aws*s3", "cloudflare*r2", "gcp*storage", "azure*storage", "ociStorage".
  final pulumi.Input<String?>? provider;

  /// Creates a new [CloudConnectorRulesRule].
  /// [description] Optional.
  /// [enabled] Optional.
  /// [expression] Optional.
  /// [id] Optional.
  /// [parameters] Parameters of Cloud Connector Rule
  /// [provider] Cloud Provider type
  const CloudConnectorRulesRule({
    this.description,
    this.enabled,
    this.expression,
    this.id,
    this.parameters,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'expression': ?expression,
      'id': ?id,
      'parameters': ?pulumi.Input.mapOptionalInputValue<CloudConnectorRulesRuleParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'provider': ?provider,
    };
  }

  factory CloudConnectorRulesRule.fromMap(Map<String, dynamic> map) {
    return CloudConnectorRulesRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudConnectorRulesRuleParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
