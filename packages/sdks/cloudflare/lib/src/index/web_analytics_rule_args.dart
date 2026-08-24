// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_web_analytics_rule_web_analytics_rule_args_doc}
/// The set of arguments for WebAnalyticsRule.
/// {@endtemplate}
/// {@macro pulumi_index_web_analytics_rule_web_analytics_rule_args_doc}
class WebAnalyticsRuleArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? host;
  /// Whether the rule includes or excludes traffic from being measured.
  final pulumi.Input<bool?>? inclusive;
  /// Whether the rule is paused or not.
  final pulumi.Input<bool?>? isPaused;
  final pulumi.Input<List<String>?>? paths;
  /// The Web Analytics ruleset identifier.
  final pulumi.Input<String> rulesetId;

  /// Creates a new [WebAnalyticsRuleArgs].
  /// [accountId] Identifier.
  /// [host] Optional.
  /// [inclusive] Whether the rule includes or excludes traffic from being measured.
  /// [isPaused] Whether the rule is paused or not.
  /// [paths] Optional.
  /// [rulesetId] The Web Analytics ruleset identifier.
  const WebAnalyticsRuleArgs({
    required this.accountId,
    this.host,
    this.inclusive,
    this.isPaused,
    this.paths,
    required this.rulesetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'host': ?host,
      'inclusive': ?inclusive,
      'isPaused': ?isPaused,
      'paths': ?paths,
      'rulesetId': rulesetId,
    };
  }

  factory WebAnalyticsRuleArgs.fromMap(Map<String, dynamic> map) {
    return WebAnalyticsRuleArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inclusive: (() { final guardedValue = map['inclusive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isPaused: (() { final guardedValue = map['isPaused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rulesetId: pulumi.Input.fromValue(map['rulesetId'] as String),
    );
  }
}
