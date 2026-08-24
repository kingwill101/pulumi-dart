// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rulesets_result.dart';
import 'get_rulesets_ruleset.dart';

/// Result data returned by getRulesets.
class GetRulesetsInvokeResult {
  /// The unique ID of the account.
  final String? accountId;
  /// Maximum number of rulesets to fetch (defaults to 1000).
  final int? maxItems;
  /// A list of rulesets. The returned information will not include the rules in each ruleset.
  final List<GetRulesetsResult>? results;
  /// A list of rulesets. The returned information will not include the rules in each ruleset.
  final List<GetRulesetsRuleset>? rulesets;
  /// The unique ID of the zone.
  final String? zoneId;

  /// Creates a new [GetRulesetsInvokeResult].
  /// [accountId] The unique ID of the account.
  /// [maxItems] Maximum number of rulesets to fetch (defaults to 1000).
  /// [results] A list of rulesets. The returned information will not include the rules in each ruleset.
  /// [rulesets] A list of rulesets. The returned information will not include the rules in each ruleset.
  /// [zoneId] The unique ID of the zone.
  const GetRulesetsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.rulesets,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRulesetsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rulesets': ?(() { final guardedValue = rulesets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRulesetsRuleset, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetRulesetsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetRulesetsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRulesetsResult>(guardedValue, (value) => GetRulesetsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      rulesets: (() { final guardedValue = map['rulesets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRulesetsRuleset>(guardedValue, (value) => GetRulesetsRuleset.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
