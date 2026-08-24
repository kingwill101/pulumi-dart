// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_connector_rules_rule.dart';

/// Input properties used for looking up and filtering CloudConnectorRules resources.
class CloudConnectorRulesState {
  final pulumi.Input<List<CloudConnectorRulesRule>?>? rules;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CloudConnectorRulesState].
  /// [rules] Optional.
  /// [zoneId] Identifier.
  const CloudConnectorRulesState({
    this.rules,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<CloudConnectorRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<CloudConnectorRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory CloudConnectorRulesState.fromMap(Map<String, dynamic> map) {
    return CloudConnectorRulesState(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudConnectorRulesRule>(guardedValue, (value) => CloudConnectorRulesRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
