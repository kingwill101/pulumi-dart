// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the pattern for an alias path.
class AliasPatternResponse {
  /// The alias pattern phrase.
  final pulumi.Input<String>? phrase;
  /// The type of alias pattern
  final pulumi.Input<String>? type;
  /// The alias pattern variable.
  final pulumi.Input<String>? variable;

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
      phrase: map['phrase'] == null ? null : (map['phrase']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      variable: map['variable'] == null ? null : (map['variable']! as String).input(),
    );
  }
}

