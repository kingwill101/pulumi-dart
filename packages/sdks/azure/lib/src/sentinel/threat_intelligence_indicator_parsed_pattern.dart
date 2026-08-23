// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'threat_intelligence_indicator_parsed_pattern_pattern_type_value.dart';

class ThreatIntelligenceIndicatorParsedPattern {
  /// The type key of parsed pattern.
  final pulumi.Input<String>? patternTypeKey;
  /// A `patternTypeValues` block as defined below.
  final pulumi.Input<List<ThreatIntelligenceIndicatorParsedPatternPatternTypeValue>>? patternTypeValues;

  /// Creates a new [ThreatIntelligenceIndicatorParsedPattern].
  /// [patternTypeKey] The type key of parsed pattern.
  /// [patternTypeValues] A `patternTypeValues` block as defined below.
  const ThreatIntelligenceIndicatorParsedPattern({
    this.patternTypeKey,
    this.patternTypeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patternTypeKey': ?patternTypeKey,
      'patternTypeValues': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceIndicatorParsedPatternPatternTypeValue>, List<Map<String, dynamic>>>(patternTypeValues, (value) => pulumi.Input.encodeList<ThreatIntelligenceIndicatorParsedPatternPatternTypeValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ThreatIntelligenceIndicatorParsedPattern.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorParsedPattern(
      patternTypeKey: (() { final guardedValue = map['patternTypeKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternTypeValues: (() { final guardedValue = map['patternTypeValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreatIntelligenceIndicatorParsedPatternPatternTypeValue>(guardedValue, (value) => ThreatIntelligenceIndicatorParsedPatternPatternTypeValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
