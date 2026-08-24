// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_validation_rules_position.dart';
import 'token_validation_rules_selector.dart';

/// {@template pulumi_index_token_validation_rules_token_validation_rules_args_doc}
/// The set of arguments for TokenValidationRules.
/// {@endtemplate}
/// {@macro pulumi_index_token_validation_rules_token_validation_rules_args_doc}
class TokenValidationRulesArgs {
  /// Action to take on requests that match operations included in `selector` and fail `expression`.
  /// Available values: "log", "block".
  final pulumi.Input<String> action;
  /// A human-readable description that gives more details than `title`.
  final pulumi.Input<String> description;
  /// Toggle rule on or off.
  final pulumi.Input<bool> enabled;
  /// Rule expression. Requests that fail to match this expression will be subject to `action`.
  final pulumi.Input<String> expression;
  /// Update rule order among zone rules.
  final pulumi.Input<TokenValidationRulesPosition?>? position;
  /// Select operations covered by this rule.
  ///
  /// For details on selectors, see the [Cloudflare Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
  final pulumi.Input<TokenValidationRulesSelector> selector;
  /// A human-readable name for the rule.
  final pulumi.Input<String> title;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [TokenValidationRulesArgs].
  /// [action] Action to take on requests that match operations included in `selector` and fail `expression`.
  /// [description] A human-readable description that gives more details than `title`.
  /// [enabled] Toggle rule on or off.
  /// [expression] Rule expression. Requests that fail to match this expression will be subject to `action`.
  /// [position] Update rule order among zone rules.
  /// [selector] Select operations covered by this rule.
  /// [title] A human-readable name for the rule.
  /// [zoneId] Identifier.
  const TokenValidationRulesArgs({
    required this.action,
    required this.description,
    required this.enabled,
    required this.expression,
    this.position,
    required this.selector,
    required this.title,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'enabled': enabled,
      'expression': expression,
      'position': ?pulumi.Input.mapOptionalInputValue<TokenValidationRulesPosition, Map<String, dynamic>>(position, (value) => value.toMap()),
      'selector': pulumi.Input.mapInputValue<TokenValidationRulesSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'title': title,
      'zoneId': zoneId,
    };
  }

  factory TokenValidationRulesArgs.fromMap(Map<String, dynamic> map) {
    return TokenValidationRulesArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenValidationRulesPosition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selector: pulumi.Input.fromValue(TokenValidationRulesSelector.fromMap((map['selector']! as Map).cast<String, dynamic>())),
      title: pulumi.Input.fromValue(map['title'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
