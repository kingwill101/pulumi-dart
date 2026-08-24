// ignore_for_file: unused_element, unnecessary_cast

import 'get_token_validation_rules_filter.dart';
import 'get_token_validation_rules_selector.dart';

/// Result data returned by getTokenValidationRules.
class GetTokenValidationRulesResult {
  /// Action to take on requests that match operations included in `selector` and fail `expression`.
  /// Available values: "log", "block".
  final String? action;
  final String? createdAt;
  /// A human-readable description that gives more details than `title`.
  final String? description;
  /// Toggle rule on or off.
  final bool? enabled;
  /// Rule expression. Requests that fail to match this expression will be subject to `action`.
  final String? expression;
  final GetTokenValidationRulesFilter? filter;
  final String? id;
  final String? lastUpdated;
  /// UUID.
  final String? ruleId;
  final GetTokenValidationRulesSelector? selector;
  final String? title;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetTokenValidationRulesResult].
  /// [action] Action to take on requests that match operations included in `selector` and fail `expression`.
  /// [createdAt] Optional.
  /// [description] A human-readable description that gives more details than `title`.
  /// [enabled] Toggle rule on or off.
  /// [expression] Rule expression. Requests that fail to match this expression will be subject to `action`.
  /// [filter] Optional.
  /// [id] Optional.
  /// [lastUpdated] Optional.
  /// [ruleId] UUID.
  /// [selector] Optional.
  /// [title] Optional.
  /// [zoneId] Identifier.
  const GetTokenValidationRulesResult({
    this.action,
    this.createdAt,
    this.description,
    this.enabled,
    this.expression,
    this.filter,
    this.id,
    this.lastUpdated,
    this.ruleId,
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
      'filter': ?filter?.toMap(),
      'id': ?id,
      'lastUpdated': ?lastUpdated,
      'ruleId': ?ruleId,
      'selector': ?selector?.toMap(),
      'title': ?title,
      'zoneId': ?zoneId,
    };
  }

  factory GetTokenValidationRulesResult.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetTokenValidationRulesFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return GetTokenValidationRulesSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
