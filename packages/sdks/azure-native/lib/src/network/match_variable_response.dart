// ignore_for_file: unused_element, unnecessary_cast


/// Define match variables.
class MatchVariableResponse {
  /// The selector of match variable.
  final String? selector;
  /// Match Variable.
  final String variableName;

  /// Creates a new [MatchVariableResponse].
  /// [selector] The selector of match variable.
  /// [variableName] Match Variable.
  MatchVariableResponse({
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
      selector: map['selector'] == null ? null : map['selector'] as String,
      variableName: map['variableName'] as String,
    );
  }
}

