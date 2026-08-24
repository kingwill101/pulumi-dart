// ignore_for_file: unused_element, unnecessary_cast

import 'get_user_agent_blocking_rule_configuration.dart';
import 'get_user_agent_blocking_rule_filter.dart';

/// Result data returned by getUserAgentBlockingRule.
class GetUserAgentBlockingRuleResult {
  /// The configuration object for the current rule.
  final GetUserAgentBlockingRuleConfiguration? configuration;
  /// An informative summary of the rule.
  final String? description;
  final GetUserAgentBlockingRuleFilter? filter;
  /// The unique identifier of the User Agent Blocking rule.
  final String? id;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "js*challenge", "managed*challenge".
  final String? mode;
  /// When true, indicates that the rule is currently paused.
  final bool? paused;
  /// The unique identifier of the User Agent Blocking rule.
  final String? uaRuleId;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetUserAgentBlockingRuleResult].
  /// [configuration] The configuration object for the current rule.
  /// [description] An informative summary of the rule.
  /// [filter] Optional.
  /// [id] The unique identifier of the User Agent Blocking rule.
  /// [mode] The action to apply to a matched request.
  /// [paused] When true, indicates that the rule is currently paused.
  /// [uaRuleId] The unique identifier of the User Agent Blocking rule.
  /// [zoneId] Defines an identifier.
  const GetUserAgentBlockingRuleResult({
    this.configuration,
    this.description,
    this.filter,
    this.id,
    this.mode,
    this.paused,
    this.uaRuleId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration?.toMap(),
      'description': ?description,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'mode': ?mode,
      'paused': ?paused,
      'uaRuleId': ?uaRuleId,
      'zoneId': ?zoneId,
    };
  }

  factory GetUserAgentBlockingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetUserAgentBlockingRuleResult(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return GetUserAgentBlockingRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetUserAgentBlockingRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      uaRuleId: (() { final guardedValue = map['uaRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
