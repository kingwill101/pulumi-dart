// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters.dart';
import 'ruleset_rule_exposed_credential_check.dart';
import 'ruleset_rule_logging.dart';
import 'ruleset_rule_ratelimit.dart';

class RulesetRule {
  /// The action to perform when the rule matches.
  /// Available values: "block", "challenge", "compress*response", "ddos*dynamic", "execute", "force*connection*close", "js*challenge", "log", "log*custom*field", "managed*challenge", "redirect", "rewrite", "route", "score", "serve*error", "set*cache*control", "set*cache*settings", "set*cache*tags", "set*config", "skip".
  final pulumi.Input<String> action;
  /// The parameters configuring the rule's action.
  final pulumi.Input<RulesetRuleActionParameters?>? actionParameters;
  /// An informative description of the rule.
  final pulumi.Input<String?>? description;
  /// Whether the rule should be executed.
  final pulumi.Input<bool?>? enabled;
  /// Configuration for exposed credential checking.
  final pulumi.Input<RulesetRuleExposedCredentialCheck?>? exposedCredentialCheck;
  /// The expression defining which traffic will match the rule.
  final pulumi.Input<String> expression;
  /// The unique ID of the rule.
  final pulumi.Input<String?>? id;
  /// An object configuring the rule's logging behavior.
  final pulumi.Input<RulesetRuleLogging?>? logging;
  /// An object configuring the rule's rate limit behavior.
  final pulumi.Input<RulesetRuleRatelimit?>? ratelimit;
  /// The reference of the rule (the rule's ID by default).
  final pulumi.Input<String?>? ref;

  /// Creates a new [RulesetRule].
  /// [action] The action to perform when the rule matches.
  /// [actionParameters] The parameters configuring the rule's action.
  /// [description] An informative description of the rule.
  /// [enabled] Whether the rule should be executed.
  /// [exposedCredentialCheck] Configuration for exposed credential checking.
  /// [expression] The expression defining which traffic will match the rule.
  /// [id] The unique ID of the rule.
  /// [logging] An object configuring the rule's logging behavior.
  /// [ratelimit] An object configuring the rule's rate limit behavior.
  /// [ref] The reference of the rule (the rule's ID by default).
  const RulesetRule({
    required this.action,
    this.actionParameters,
    this.description,
    this.enabled,
    this.exposedCredentialCheck,
    required this.expression,
    this.id,
    this.logging,
    this.ratelimit,
    this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'actionParameters': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParameters, Map<String, dynamic>>(actionParameters, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'exposedCredentialCheck': ?pulumi.Input.mapOptionalInputValue<RulesetRuleExposedCredentialCheck, Map<String, dynamic>>(exposedCredentialCheck, (value) => value.toMap()),
      'expression': expression,
      'id': ?id,
      'logging': ?pulumi.Input.mapOptionalInputValue<RulesetRuleLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'ratelimit': ?pulumi.Input.mapOptionalInputValue<RulesetRuleRatelimit, Map<String, dynamic>>(ratelimit, (value) => value.toMap()),
      'ref': ?ref,
    };
  }

  factory RulesetRule.fromMap(Map<String, dynamic> map) {
    return RulesetRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      actionParameters: (() { final guardedValue = map['actionParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exposedCredentialCheck: (() { final guardedValue = map['exposedCredentialCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleExposedCredentialCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ratelimit: (() { final guardedValue = map['ratelimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleRatelimit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
