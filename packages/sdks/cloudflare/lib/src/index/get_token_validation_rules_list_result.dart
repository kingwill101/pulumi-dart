// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_token_validation_rules_list_result_selector.dart';

class GetTokenValidationRulesListResult {
  /// Action to take on requests that match operations included in `selector` and fail `expression`.
  /// Available values: "log", "block".
  final pulumi.Input<String> action;
  final pulumi.Input<String> createdAt;
  /// A human-readable description that gives more details than `title`.
  final pulumi.Input<String> description;
  /// Toggle rule on or off.
  final pulumi.Input<bool> enabled;
  /// Rule expression. Requests that fail to match this expression will be subject to `action`.
  final pulumi.Input<String> expression;
  /// Select rules with these IDs.
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastUpdated;
  /// Select operations covered by this rule.
  ///
  /// For details on selectors, see the [Cloudflare Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
  final pulumi.Input<GetTokenValidationRulesListResultSelector> selector;
  /// A human-readable name for the rule.
  final pulumi.Input<String> title;

  /// Creates a new [GetTokenValidationRulesListResult].
  /// [action] Action to take on requests that match operations included in `selector` and fail `expression`.
  /// [createdAt] Required.
  /// [description] A human-readable description that gives more details than `title`.
  /// [enabled] Toggle rule on or off.
  /// [expression] Rule expression. Requests that fail to match this expression will be subject to `action`.
  /// [id] Select rules with these IDs.
  /// [lastUpdated] Required.
  /// [selector] Select operations covered by this rule.
  /// [title] A human-readable name for the rule.
  const GetTokenValidationRulesListResult({
    required this.action,
    required this.createdAt,
    required this.description,
    required this.enabled,
    required this.expression,
    required this.id,
    required this.lastUpdated,
    required this.selector,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'createdAt': createdAt,
      'description': description,
      'enabled': enabled,
      'expression': expression,
      'id': id,
      'lastUpdated': lastUpdated,
      'selector': pulumi.Input.mapInputValue<GetTokenValidationRulesListResultSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GetTokenValidationRulesListResult.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesListResult(
      action: pulumi.Input.fromValue(map['action'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      selector: pulumi.Input.fromValue(GetTokenValidationRulesListResultSelector.fromMap((map['selector']! as Map).cast<String, dynamic>())),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
