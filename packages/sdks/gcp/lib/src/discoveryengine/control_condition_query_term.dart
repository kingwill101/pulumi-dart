// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlConditionQueryTerm {
  /// If true, the query term must be an exact match. Otherwise, the query term can be a partial match.
  final pulumi.Input<bool>? fullMatch;
  /// The value of the query term.
  final pulumi.Input<String>? value;

  /// Creates a new [ControlConditionQueryTerm].
  /// [fullMatch] If true, the query term must be an exact match. Otherwise, the query term can be a partial match.
  /// [value] The value of the query term.
  const ControlConditionQueryTerm({
    this.fullMatch,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullMatch': ?fullMatch,
      'value': ?value,
    };
  }

  factory ControlConditionQueryTerm.fromMap(Map<String, dynamic> map) {
    return ControlConditionQueryTerm(
      fullMatch: (() { final guardedValue = map['fullMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

