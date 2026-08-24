// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule.dart';

/// {@template pulumi_index_ruleset_ruleset_args_doc}
/// The set of arguments for Ruleset.
/// {@endtemplate}
/// {@macro pulumi_index_ruleset_ruleset_args_doc}
class RulesetArgs {
  /// The unique ID of the account.
  final pulumi.Input<String?>? accountId;
  /// An informative description of the ruleset.
  final pulumi.Input<String?>? description;
  /// The kind of the ruleset.
  /// Available values: "managed", "custom", "root", "zone".
  final pulumi.Input<String> kind;
  /// The human-readable name of the ruleset.
  final pulumi.Input<String> name;
  /// The phase of the ruleset.
  /// Available values: "ddos*l4", "ddos*l7", "http*config*settings", "http*custom*errors", "http*log*custom*fields", "http*ratelimit", "http*request*cache*settings", "http*request*dynamic*redirect", "http*request*firewall*custom", "http*request*firewall*managed", "http*request*late*transform", "http*request*origin", "http*request*redirect", "http*request*sanitize", "http*request*sbfm", "http*request*transform", "http*response*cache*settings", "http*response*compression", "http*response*firewall*managed", "http*response*headers*transform", "magic*transit", "magic*transit*ids*managed", "magic*transit*managed", "magic*transit*ratelimit".
  final pulumi.Input<String> phase;
  /// The list of rules in the ruleset.
  final pulumi.Input<List<RulesetRule>?>? rules;
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [RulesetArgs].
  /// [accountId] The unique ID of the account.
  /// [description] An informative description of the ruleset.
  /// [kind] The kind of the ruleset.
  /// [name] The human-readable name of the ruleset.
  /// [phase] The phase of the ruleset.
  /// [rules] The list of rules in the ruleset.
  /// [zoneId] The unique ID of the zone.
  const RulesetArgs({
    this.accountId,
    this.description,
    required this.kind,
    required this.name,
    required this.phase,
    this.rules,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'kind': kind,
      'name': name,
      'phase': phase,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RulesetRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RulesetRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory RulesetArgs.fromMap(Map<String, dynamic> map) {
    return RulesetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      phase: pulumi.Input.fromValue(map['phase'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRule>(guardedValue, (value) => RulesetRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
