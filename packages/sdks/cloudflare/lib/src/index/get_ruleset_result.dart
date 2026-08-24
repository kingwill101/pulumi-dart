// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule.dart';

/// Result data returned by getRuleset.
class GetRulesetResult {
  /// The unique ID of the account.
  final String? accountId;
  /// An informative description of the ruleset.
  final String? description;
  /// The unique ID of the ruleset.
  final String? id;
  /// The kind of the ruleset.
  /// Available values: "managed", "custom", "root", "zone".
  final String? kind;
  /// The timestamp of when the ruleset was last modified.
  final String? lastUpdated;
  /// The human-readable name of the ruleset.
  final String? name;
  /// The phase of the ruleset.
  /// Available values: "ddos*l4", "ddos*l7", "http*config*settings", "http*custom*errors", "http*log*custom*fields", "http*ratelimit", "http*request*cache*settings", "http*request*dynamic*redirect", "http*request*firewall*custom", "http*request*firewall*managed", "http*request*late*transform", "http*request*origin", "http*request*redirect", "http*request*sanitize", "http*request*sbfm", "http*request*transform", "http*response*cache*settings", "http*response*compression", "http*response*firewall*managed", "http*response*headers*transform", "magic*transit", "magic*transit*ids*managed", "magic*transit*managed", "magic*transit*ratelimit".
  final String? phase;
  /// The list of rules in the ruleset.
  final List<GetRulesetRule>? rules;
  /// The unique ID of the ruleset.
  final String? rulesetId;
  /// The version of the ruleset.
  final String? version;
  /// The unique ID of the zone.
  final String? zoneId;

  /// Creates a new [GetRulesetResult].
  /// [accountId] The unique ID of the account.
  /// [description] An informative description of the ruleset.
  /// [id] The unique ID of the ruleset.
  /// [kind] The kind of the ruleset.
  /// [lastUpdated] The timestamp of when the ruleset was last modified.
  /// [name] The human-readable name of the ruleset.
  /// [phase] The phase of the ruleset.
  /// [rules] The list of rules in the ruleset.
  /// [rulesetId] The unique ID of the ruleset.
  /// [version] The version of the ruleset.
  /// [zoneId] The unique ID of the zone.
  const GetRulesetResult({
    this.accountId,
    this.description,
    this.id,
    this.kind,
    this.lastUpdated,
    this.name,
    this.phase,
    this.rules,
    this.rulesetId,
    this.version,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'id': ?id,
      'kind': ?kind,
      'lastUpdated': ?lastUpdated,
      'name': ?name,
      'phase': ?phase,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRulesetRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rulesetId': ?rulesetId,
      'version': ?version,
      'zoneId': ?zoneId,
    };
  }

  factory GetRulesetResult.fromMap(Map<String, dynamic> map) {
    return GetRulesetResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRulesetRule>(guardedValue, (value) => GetRulesetRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      rulesetId: (() { final guardedValue = map['rulesetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
