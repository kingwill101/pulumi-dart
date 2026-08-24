// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnippetRulesListResult {
  /// An informative description of the rule.
  final pulumi.Input<String> description;
  /// Whether the rule should be executed.
  final pulumi.Input<bool> enabled;
  /// The expression defining which traffic will match the rule.
  final pulumi.Input<String> expression;
  /// The unique ID of the rule.
  final pulumi.Input<String> id;
  /// The timestamp of when the rule was last modified.
  final pulumi.Input<String> lastUpdated;
  /// The identifying name of the snippet.
  final pulumi.Input<String> snippetName;

  /// Creates a new [GetSnippetRulesListResult].
  /// [description] An informative description of the rule.
  /// [enabled] Whether the rule should be executed.
  /// [expression] The expression defining which traffic will match the rule.
  /// [id] The unique ID of the rule.
  /// [lastUpdated] The timestamp of when the rule was last modified.
  /// [snippetName] The identifying name of the snippet.
  const GetSnippetRulesListResult({
    required this.description,
    required this.enabled,
    required this.expression,
    required this.id,
    required this.lastUpdated,
    required this.snippetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enabled': enabled,
      'expression': expression,
      'id': id,
      'lastUpdated': lastUpdated,
      'snippetName': snippetName,
    };
  }

  factory GetSnippetRulesListResult.fromMap(Map<String, dynamic> map) {
    return GetSnippetRulesListResult(
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      snippetName: pulumi.Input.fromValue(map['snippetName'] as String),
    );
  }
}
