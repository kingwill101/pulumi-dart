// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_connector_rules_rule.dart';

/// Result data returned by getCloudConnectorRules.
class GetCloudConnectorRulesResult {
  /// Identifier.
  final String? id;
  final List<GetCloudConnectorRulesRule>? rules;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCloudConnectorRulesResult].
  /// [id] Identifier.
  /// [rules] Optional.
  /// [zoneId] Identifier.
  const GetCloudConnectorRulesResult({
    this.id,
    this.rules,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudConnectorRulesRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetCloudConnectorRulesResult.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorRulesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudConnectorRulesRule>(guardedValue, (value) => GetCloudConnectorRulesRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
