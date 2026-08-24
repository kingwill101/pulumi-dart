// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnippetRulesRule {
  /// Provide an informative description of the rule.
  final pulumi.Input<String?>? description;
  /// Indicate whether to execute the rule.
  final pulumi.Input<bool?>? enabled;
  /// Define the expression that determines which traffic matches the rule.
  final pulumi.Input<String> expression;
  /// Specify the unique ID of the rule.
  final pulumi.Input<String?>? id;
  /// Specify the timestamp of when the rule was last modified.
  final pulumi.Input<String?>? lastUpdated;
  /// Identify the snippet.
  final pulumi.Input<String> snippetName;

  /// Creates a new [SnippetRulesRule].
  /// [description] Provide an informative description of the rule.
  /// [enabled] Indicate whether to execute the rule.
  /// [expression] Define the expression that determines which traffic matches the rule.
  /// [id] Specify the unique ID of the rule.
  /// [lastUpdated] Specify the timestamp of when the rule was last modified.
  /// [snippetName] Identify the snippet.
  const SnippetRulesRule({
    this.description,
    this.enabled,
    required this.expression,
    this.id,
    this.lastUpdated,
    required this.snippetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'expression': expression,
      'id': ?id,
      'lastUpdated': ?lastUpdated,
      'snippetName': snippetName,
    };
  }

  factory SnippetRulesRule.fromMap(Map<String, dynamic> map) {
    return SnippetRulesRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snippetName: pulumi.Input.fromValue(map['snippetName'] as String),
    );
  }
}
