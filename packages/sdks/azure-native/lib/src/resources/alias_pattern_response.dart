// ignore_for_file: unused_element, unnecessary_cast


/// The type of the pattern for an alias path.
class AliasPatternResponse {
  /// The alias pattern phrase.
  final String? phrase;
  /// The type of alias pattern
  final String? type;
  /// The alias pattern variable.
  final String? variable;

  /// Creates a new [AliasPatternResponse].
  /// [phrase] The alias pattern phrase.
  /// [type] The type of alias pattern
  /// [variable] The alias pattern variable.
  AliasPatternResponse({
    this.phrase,
    this.type,
    this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phrase': ?phrase,
      'type': ?type,
      'variable': ?variable,
    };
  }

  factory AliasPatternResponse.fromMap(Map<String, dynamic> map) {
    return AliasPatternResponse(
      phrase: map['phrase'] == null ? null : map['phrase'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      variable: map['variable'] == null ? null : map['variable'] as String,
    );
  }
}

