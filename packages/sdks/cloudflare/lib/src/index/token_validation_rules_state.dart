// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_validation_rules_position.dart';
import 'token_validation_rules_selector.dart';

/// Input properties used for looking up and filtering TokenValidationRules resources.
class TokenValidationRulesState {
  /// Action to take on requests that match operations included in `selector` and fail `expression`.
  /// Available values: "log", "block".
  final pulumi.Input<String?>? action;
  final pulumi.Input<String?>? createdAt;
  /// A human-readable description that gives more details than `title`.
  final pulumi.Input<String?>? description;
  /// Toggle rule on or off.
  final pulumi.Input<bool?>? enabled;
  /// Rule expression. Requests that fail to match this expression will be subject to `action`.
  final pulumi.Input<String?>? expression;
  final pulumi.Input<String?>? lastUpdated;
  /// Update rule order among zone rules.
  final pulumi.Input<TokenValidationRulesPosition?>? position;
  /// Select operations covered by this rule.
  ///
  /// For details on selectors, see the [Cloudflare Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
  final pulumi.Input<TokenValidationRulesSelector?>? selector;
  /// A human-readable name for the rule.
  final pulumi.Input<String?>? title;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [TokenValidationRulesState].
  /// [action] Action to take on requests that match operations included in `selector` and fail `expression`.
  /// [createdAt] Optional.
  /// [description] A human-readable description that gives more details than `title`.
  /// [enabled] Toggle rule on or off.
  /// [expression] Rule expression. Requests that fail to match this expression will be subject to `action`.
  /// [lastUpdated] Optional.
  /// [position] Update rule order among zone rules.
  /// [selector] Select operations covered by this rule.
  /// [title] A human-readable name for the rule.
  /// [zoneId] Identifier.
  const TokenValidationRulesState({
    this.action,
    this.createdAt,
    this.description,
    this.enabled,
    this.expression,
    this.lastUpdated,
    this.position,
    this.selector,
    this.title,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createdAt': ?createdAt,
      'description': ?description,
      'enabled': ?enabled,
      'expression': ?expression,
      'lastUpdated': ?lastUpdated,
      'position': ?pulumi.Input.mapOptionalInputValue<TokenValidationRulesPosition, Map<String, dynamic>>(position, (value) => value.toMap()),
      'selector': ?pulumi.Input.mapOptionalInputValue<TokenValidationRulesSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'title': ?title,
      'zoneId': ?zoneId,
    };
  }

  factory TokenValidationRulesState.fromMap(Map<String, dynamic> map) {
    return TokenValidationRulesState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenValidationRulesPosition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenValidationRulesSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
