// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_user_agent_blocking_rules_get_user_agent_blocking_rules_args_doc}
/// Arguments for getUserAgentBlockingRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_user_agent_blocking_rules_get_user_agent_blocking_rules_args_doc}
class GetUserAgentBlockingRulesArgs {
  /// A string to search for in the description of existing rules.
  final pulumi.Input<String?>? description;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// When true, indicates that the rule is currently paused.
  final pulumi.Input<bool?>? paused;
  /// A string to search for in the user agent values of existing rules.
  final pulumi.Input<String?>? userAgent;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetUserAgentBlockingRulesArgs].
  /// [description] A string to search for in the description of existing rules.
  /// [maxItems] Max items to fetch, default: 1000
  /// [paused] When true, indicates that the rule is currently paused.
  /// [userAgent] A string to search for in the user agent values of existing rules.
  /// [zoneId] Defines an identifier.
  const GetUserAgentBlockingRulesArgs({
    this.description,
    this.maxItems,
    this.paused,
    this.userAgent,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'maxItems': ?maxItems,
      'paused': ?paused,
      'userAgent': ?userAgent,
      'zoneId': ?zoneId,
    };
  }

  factory GetUserAgentBlockingRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetUserAgentBlockingRulesArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userAgent: (() { final guardedValue = map['userAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
