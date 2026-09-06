// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define match variables.
class MatchVariableResponse {
  /// The selector of match variable.
  final pulumi.Input<String?>? selector;
  /// Match Variable.
  final pulumi.Input<String> variableName;

  /// Creates a new [MatchVariableResponse].
  /// [selector] The selector of match variable.
  /// [variableName] Match Variable.
  const MatchVariableResponse({
    this.selector,
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selector': ?selector,
      'variableName': variableName,
    };
  }

  factory MatchVariableResponse.fromMap(Map<String, dynamic> map) {
    return MatchVariableResponse(
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
    );
  }
}
