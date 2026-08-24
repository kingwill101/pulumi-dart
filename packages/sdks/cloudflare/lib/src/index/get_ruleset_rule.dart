// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters.dart';
import 'get_ruleset_rule_exposed_credential_check.dart';
import 'get_ruleset_rule_logging.dart';
import 'get_ruleset_rule_ratelimit.dart';

class GetRulesetRule {
  /// The action to perform when the rule matches.
  /// Available values: "block", "challenge", "compress*response", "ddos*dynamic", "execute", "force*connection*close", "js*challenge", "log", "log*custom*field", "managed*challenge", "redirect", "rewrite", "route", "score", "serve*error", "set*cache*control", "set*cache*settings", "set*cache*tags", "set*config", "skip".
  final pulumi.Input<String> action;
  /// The parameters configuring the rule's action.
  final pulumi.Input<GetRulesetRuleActionParameters> actionParameters;
  /// The categories of the rule.
  final pulumi.Input<List<String>> categories;
  /// An informative description of the rule.
  final pulumi.Input<String> description;
  /// Whether the rule should be executed.
  final pulumi.Input<bool> enabled;
  /// Configuration for exposed credential checking.
  final pulumi.Input<GetRulesetRuleExposedCredentialCheck> exposedCredentialCheck;
  /// The expression defining which traffic will match the rule.
  final pulumi.Input<String> expression;
  /// The unique ID of the rule.
  final pulumi.Input<String> id;
  /// An object configuring the rule's logging behavior.
  final pulumi.Input<GetRulesetRuleLogging> logging;
  /// An object configuring the rule's rate limit behavior.
  final pulumi.Input<GetRulesetRuleRatelimit> ratelimit;
  /// The reference of the rule (the rule's ID by default).
  final pulumi.Input<String> ref;

  /// Creates a new [GetRulesetRule].
  /// [action] The action to perform when the rule matches.
  /// [actionParameters] The parameters configuring the rule's action.
  /// [categories] The categories of the rule.
  /// [description] An informative description of the rule.
  /// [enabled] Whether the rule should be executed.
  /// [exposedCredentialCheck] Configuration for exposed credential checking.
  /// [expression] The expression defining which traffic will match the rule.
  /// [id] The unique ID of the rule.
  /// [logging] An object configuring the rule's logging behavior.
  /// [ratelimit] An object configuring the rule's rate limit behavior.
  /// [ref] The reference of the rule (the rule's ID by default).
  const GetRulesetRule({
    required this.action,
    required this.actionParameters,
    required this.categories,
    required this.description,
    required this.enabled,
    required this.exposedCredentialCheck,
    required this.expression,
    required this.id,
    required this.logging,
    required this.ratelimit,
    required this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'actionParameters': pulumi.Input.mapInputValue<GetRulesetRuleActionParameters, Map<String, dynamic>>(actionParameters, (value) => value.toMap()),
      'categories': categories,
      'description': description,
      'enabled': enabled,
      'exposedCredentialCheck': pulumi.Input.mapInputValue<GetRulesetRuleExposedCredentialCheck, Map<String, dynamic>>(exposedCredentialCheck, (value) => value.toMap()),
      'expression': expression,
      'id': id,
      'logging': pulumi.Input.mapInputValue<GetRulesetRuleLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'ratelimit': pulumi.Input.mapInputValue<GetRulesetRuleRatelimit, Map<String, dynamic>>(ratelimit, (value) => value.toMap()),
      'ref': ref,
    };
  }

  factory GetRulesetRule.fromMap(Map<String, dynamic> map) {
    return GetRulesetRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      actionParameters: pulumi.Input.fromValue(GetRulesetRuleActionParameters.fromMap((map['actionParameters']! as Map).cast<String, dynamic>())),
      categories: pulumi.Input.fromValue((map['categories'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      exposedCredentialCheck: pulumi.Input.fromValue(GetRulesetRuleExposedCredentialCheck.fromMap((map['exposedCredentialCheck']! as Map).cast<String, dynamic>())),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      logging: pulumi.Input.fromValue(GetRulesetRuleLogging.fromMap((map['logging']! as Map).cast<String, dynamic>())),
      ratelimit: pulumi.Input.fromValue(GetRulesetRuleRatelimit.fromMap((map['ratelimit']! as Map).cast<String, dynamic>())),
      ref: pulumi.Input.fromValue(map['ref'] as String),
    );
  }
}
