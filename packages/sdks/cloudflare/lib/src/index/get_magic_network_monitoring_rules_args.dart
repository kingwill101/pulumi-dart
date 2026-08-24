// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_network_monitoring_rules_get_magic_network_monitoring_rules_args_doc}
/// Arguments for getMagicNetworkMonitoringRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_network_monitoring_rules_get_magic_network_monitoring_rules_args_doc}
class GetMagicNetworkMonitoringRulesArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetMagicNetworkMonitoringRulesArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  const GetMagicNetworkMonitoringRulesArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetMagicNetworkMonitoringRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicNetworkMonitoringRulesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
