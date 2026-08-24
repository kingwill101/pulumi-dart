// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule.dart';

/// Input properties used for looking up and filtering Ruleset resources.
class RulesetState {
  /// The unique ID of the account.
  final pulumi.Input<String?>? accountId;
  /// An informative description of the ruleset.
  final pulumi.Input<String?>? description;
  /// The kind of the ruleset.
  /// Available values: "managed", "custom", "root", "zone".
  final pulumi.Input<String?>? kind;
  /// The timestamp of when the ruleset was last modified.
  final pulumi.Input<String?>? lastUpdated;
  /// The human-readable name of the ruleset.
  final pulumi.Input<String?>? name;
  /// The phase of the ruleset.
  /// Available values: "ddos*l4", "ddos*l7", "http*config*settings", "http*custom*errors", "http*log*custom*fields", "http*ratelimit", "http*request*cache*settings", "http*request*dynamic*redirect", "http*request*firewall*custom", "http*request*firewall*managed", "http*request*late*transform", "http*request*origin", "http*request*redirect", "http*request*sanitize", "http*request*sbfm", "http*request*transform", "http*response*cache*settings", "http*response*compression", "http*response*firewall*managed", "http*response*headers*transform", "magic*transit", "magic*transit*ids*managed", "magic*transit*managed", "magic*transit*ratelimit".
  final pulumi.Input<String?>? phase;
  /// The list of rules in the ruleset.
  final pulumi.Input<List<RulesetRule>?>? rules;
  /// The version of the ruleset.
  final pulumi.Input<String?>? version;
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [RulesetState].
  /// [accountId] The unique ID of the account.
  /// [description] An informative description of the ruleset.
  /// [kind] The kind of the ruleset.
  /// [lastUpdated] The timestamp of when the ruleset was last modified.
  /// [name] The human-readable name of the ruleset.
  /// [phase] The phase of the ruleset.
  /// [rules] The list of rules in the ruleset.
  /// [version] The version of the ruleset.
  /// [zoneId] The unique ID of the zone.
  const RulesetState({
    this.accountId,
    this.description,
    this.kind,
    this.lastUpdated,
    this.name,
    this.phase,
    this.rules,
    this.version,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'kind': ?kind,
      'lastUpdated': ?lastUpdated,
      'name': ?name,
      'phase': ?phase,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RulesetRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RulesetRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
      'zoneId': ?zoneId,
    };
  }

  factory RulesetState.fromMap(Map<String, dynamic> map) {
    return RulesetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRule>(guardedValue, (value) => RulesetRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
