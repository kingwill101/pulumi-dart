// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ruleset_get_ruleset_args_doc}
/// Arguments for getRuleset.
/// {@endtemplate}
/// {@macro pulumi_index_get_ruleset_get_ruleset_args_doc}
class GetRulesetArgs {
  /// The unique ID of the account.
  final pulumi.Input<String?>? accountId;
  /// The unique ID of the ruleset.
  final pulumi.Input<String?>? id;
  /// The unique ID of the ruleset.
  final pulumi.Input<String?>? rulesetId;
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetRulesetArgs].
  /// [accountId] The unique ID of the account.
  /// [id] The unique ID of the ruleset.
  /// [rulesetId] The unique ID of the ruleset.
  /// [zoneId] The unique ID of the zone.
  const GetRulesetArgs({
    this.accountId,
    this.id,
    this.rulesetId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'rulesetId': ?rulesetId,
      'zoneId': ?zoneId,
    };
  }

  factory GetRulesetArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rulesetId: (() { final guardedValue = map['rulesetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
