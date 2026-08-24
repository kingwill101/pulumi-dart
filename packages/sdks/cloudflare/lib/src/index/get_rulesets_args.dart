// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_rulesets_get_rulesets_args_doc}
/// Arguments for getRulesets.
/// {@endtemplate}
/// {@macro pulumi_index_get_rulesets_get_rulesets_args_doc}
class GetRulesetsArgs {
  /// The unique ID of the account.
  final pulumi.Input<String?>? accountId;
  /// Maximum number of rulesets to fetch (defaults to 1000).
  final pulumi.Input<int?>? maxItems;
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetRulesetsArgs].
  /// [accountId] The unique ID of the account.
  /// [maxItems] Maximum number of rulesets to fetch (defaults to 1000).
  /// [zoneId] The unique ID of the zone.
  const GetRulesetsArgs({
    this.accountId,
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetRulesetsArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesetsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
