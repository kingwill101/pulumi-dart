// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_connector_rules_rule.dart';

/// {@template pulumi_index_cloud_connector_rules_cloud_connector_rules_args_doc}
/// The set of arguments for CloudConnectorRules.
/// {@endtemplate}
/// {@macro pulumi_index_cloud_connector_rules_cloud_connector_rules_args_doc}
class CloudConnectorRulesArgs {
  final pulumi.Input<List<CloudConnectorRulesRule>?>? rules;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [CloudConnectorRulesArgs].
  /// [rules] Optional.
  /// [zoneId] Identifier.
  const CloudConnectorRulesArgs({
    this.rules,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<CloudConnectorRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<CloudConnectorRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory CloudConnectorRulesArgs.fromMap(Map<String, dynamic> map) {
    return CloudConnectorRulesArgs(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudConnectorRulesRule>(guardedValue, (value) => CloudConnectorRulesRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
