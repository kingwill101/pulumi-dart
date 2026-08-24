// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_rules_result.dart';

/// Result data returned by getEmailRoutingRules.
class GetEmailRoutingRulesInvokeResult {
  /// Filter by enabled routing rules.
  final bool? enabled;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetEmailRoutingRulesResult>? results;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetEmailRoutingRulesInvokeResult].
  /// [enabled] Filter by enabled routing rules.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [zoneId] Identifier.
  const GetEmailRoutingRulesInvokeResult({
    this.enabled,
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailRoutingRulesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingRulesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingRulesInvokeResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailRoutingRulesResult>(guardedValue, (value) => GetEmailRoutingRulesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
