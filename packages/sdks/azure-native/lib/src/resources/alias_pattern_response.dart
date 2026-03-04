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
  AliasPatternResponse({this.phrase, this.type, this.variable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phrase': ?phrase,
      'type': ?type,
      'variable': ?variable,
    };
  }

  factory AliasPatternResponse.fromMap(Map<String, dynamic> map) {
    return AliasPatternResponse(
      phrase: (() {
        final guardedValue = map['phrase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      variable: (() {
        final guardedValue = map['variable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
