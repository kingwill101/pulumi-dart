// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_token_validation_rules_list_result.dart';

/// Result data returned by getTokenValidationRulesList.
class GetTokenValidationRulesListInvokeResult {
  /// Action to take on requests that match operations included in `selector` and fail `expression`.
  /// Available values: "log", "block".
  final String? action;
  /// Toggle rule on or off.
  final bool? enabled;
  /// Select rules with this host in `include`.
  final String? host;
  /// Select rules with this host in `include`.
  final String? hostname;
  /// Select rules with these IDs.
  final String? id;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetTokenValidationRulesListResult>? results;
  /// Select rules with these IDs.
  final String? ruleId;
  /// Select rules using any of these token configurations.
  final List<String>? tokenConfigurations;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetTokenValidationRulesListInvokeResult].
  /// [action] Action to take on requests that match operations included in `selector` and fail `expression`.
  /// [enabled] Toggle rule on or off.
  /// [host] Select rules with this host in `include`.
  /// [hostname] Select rules with this host in `include`.
  /// [id] Select rules with these IDs.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [ruleId] Select rules with these IDs.
  /// [tokenConfigurations] Select rules using any of these token configurations.
  /// [zoneId] Identifier.
  const GetTokenValidationRulesListInvokeResult({
    this.action,
    this.enabled,
    this.host,
    this.hostname,
    this.id,
    this.maxItems,
    this.results,
    this.ruleId,
    this.tokenConfigurations,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'enabled': ?enabled,
      'host': ?host,
      'hostname': ?hostname,
      'id': ?id,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTokenValidationRulesListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ruleId': ?ruleId,
      'tokenConfigurations': ?tokenConfigurations,
      'zoneId': ?zoneId,
    };
  }

  factory GetTokenValidationRulesListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesListInvokeResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTokenValidationRulesListResult>(guardedValue, (value) => GetTokenValidationRulesListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokenConfigurations: (() { final guardedValue = map['tokenConfigurations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
