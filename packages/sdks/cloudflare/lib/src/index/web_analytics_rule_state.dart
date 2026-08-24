// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WebAnalyticsRule resources.
class WebAnalyticsRuleState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? created;
  final pulumi.Input<String?>? host;
  /// Whether the rule includes or excludes traffic from being measured.
  final pulumi.Input<bool?>? inclusive;
  /// Whether the rule is paused or not.
  final pulumi.Input<bool?>? isPaused;
  final pulumi.Input<List<String>?>? paths;
  final pulumi.Input<double?>? priority;
  /// The Web Analytics ruleset identifier.
  final pulumi.Input<String?>? rulesetId;

  /// Creates a new [WebAnalyticsRuleState].
  /// [accountId] Identifier.
  /// [created] Optional.
  /// [host] Optional.
  /// [inclusive] Whether the rule includes or excludes traffic from being measured.
  /// [isPaused] Whether the rule is paused or not.
  /// [paths] Optional.
  /// [priority] Optional.
  /// [rulesetId] The Web Analytics ruleset identifier.
  const WebAnalyticsRuleState({
    this.accountId,
    this.created,
    this.host,
    this.inclusive,
    this.isPaused,
    this.paths,
    this.priority,
    this.rulesetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'host': ?host,
      'inclusive': ?inclusive,
      'isPaused': ?isPaused,
      'paths': ?paths,
      'priority': ?priority,
      'rulesetId': ?rulesetId,
    };
  }

  factory WebAnalyticsRuleState.fromMap(Map<String, dynamic> map) {
    return WebAnalyticsRuleState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inclusive: (() { final guardedValue = map['inclusive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isPaused: (() { final guardedValue = map['isPaused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      rulesetId: (() { final guardedValue = map['rulesetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
