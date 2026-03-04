// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreatIntelligenceIndicatorParsedPatternPatternTypeValue {
  /// The value of the parsed pattern type.
  final pulumi.Input<String>? value;

  /// The type of the value of the parsed pattern type value.
  final pulumi.Input<String>? valueType;

  /// Creates a new [ThreatIntelligenceIndicatorParsedPatternPatternTypeValue].
  /// [value] The value of the parsed pattern type.
  /// [valueType] The type of the value of the parsed pattern type value.
  ThreatIntelligenceIndicatorParsedPatternPatternTypeValue({
    this.value,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value, 'valueType': ?valueType};
  }

  factory ThreatIntelligenceIndicatorParsedPatternPatternTypeValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ThreatIntelligenceIndicatorParsedPatternPatternTypeValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueType: (() {
        final guardedValue = map['valueType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
