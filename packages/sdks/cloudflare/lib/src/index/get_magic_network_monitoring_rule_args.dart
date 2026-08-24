// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_network_monitoring_rule_get_magic_network_monitoring_rule_args_doc}
/// Arguments for getMagicNetworkMonitoringRule.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_network_monitoring_rule_get_magic_network_monitoring_rule_args_doc}
class GetMagicNetworkMonitoringRuleArgs {
  final pulumi.Input<String?>? accountId;
  /// The id of the rule. Must be unique.
  final pulumi.Input<String> ruleId;

  /// Creates a new [GetMagicNetworkMonitoringRuleArgs].
  /// [accountId] Optional.
  /// [ruleId] The id of the rule. Must be unique.
  const GetMagicNetworkMonitoringRuleArgs({
    this.accountId,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ruleId': ruleId,
    };
  }

  factory GetMagicNetworkMonitoringRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicNetworkMonitoringRuleArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
