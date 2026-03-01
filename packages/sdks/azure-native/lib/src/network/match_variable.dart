// ignore_for_file: unused_element, unnecessary_cast


/// Define match variables.
class MatchVariable {
  /// The selector of match variable.
  final String? selector;
  /// Match Variable.
  final String variableName;

  /// Creates a new [MatchVariable].
  /// [selector] The selector of match variable.
  /// [variableName] Match Variable.
  MatchVariable({
    this.selector,
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selector': ?selector,
      'variableName': variableName,
    };
  }

  factory MatchVariable.fromMap(Map<String, dynamic> map) {
    return MatchVariable(
      selector: map['selector'] == null ? null : map['selector'] as String,
      variableName: map['variableName'] as String,
    );
  }
}

