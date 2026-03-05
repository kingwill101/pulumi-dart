// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes threat kill chain phase entity
class ThreatIntelligenceParsedPatternTypeValue {
  /// Value of parsed pattern
  final pulumi.Input<String>? value;
  /// Type of the value
  final pulumi.Input<String>? valueType;

  /// Creates a new [ThreatIntelligenceParsedPatternTypeValue].
  /// [value] Value of parsed pattern
  /// [valueType] Type of the value
  ThreatIntelligenceParsedPatternTypeValue({
    this.value,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
      'valueType': ?valueType,
    };
  }

  factory ThreatIntelligenceParsedPatternTypeValue.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceParsedPatternTypeValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

