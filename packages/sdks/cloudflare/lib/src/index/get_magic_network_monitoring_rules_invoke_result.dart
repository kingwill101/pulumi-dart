// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_network_monitoring_rules_result.dart';

/// Result data returned by getMagicNetworkMonitoringRules.
class GetMagicNetworkMonitoringRulesInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetMagicNetworkMonitoringRulesResult>? results;

  /// Creates a new [GetMagicNetworkMonitoringRulesInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetMagicNetworkMonitoringRulesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMagicNetworkMonitoringRulesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetMagicNetworkMonitoringRulesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetMagicNetworkMonitoringRulesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMagicNetworkMonitoringRulesResult>(guardedValue, (value) => GetMagicNetworkMonitoringRulesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
