// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnippetRulesListResult {
  /// Provide an informative description of the rule.
  final pulumi.Input<String> description;
  /// Indicate whether to execute the rule.
  final pulumi.Input<bool> enabled;
  /// Define the expression that determines which traffic matches the rule.
  final pulumi.Input<String> expression;
  /// Specify the unique ID of the rule.
  final pulumi.Input<String> id;
  /// Specify the timestamp of when the rule was last modified.
  final pulumi.Input<String> lastUpdated;
  /// Identify the snippet.
  final pulumi.Input<String> snippetName;

  /// Creates a new [GetSnippetRulesListResult].
  /// [description] Provide an informative description of the rule.
  /// [enabled] Indicate whether to execute the rule.
  /// [expression] Define the expression that determines which traffic matches the rule.
  /// [id] Specify the unique ID of the rule.
  /// [lastUpdated] Specify the timestamp of when the rule was last modified.
  /// [snippetName] Identify the snippet.
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
