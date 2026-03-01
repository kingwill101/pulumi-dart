// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'threat_intelligence_indicator_parsed_pattern_pattern_type_value.dart';

class ThreatIntelligenceIndicatorParsedPattern {
  /// The type key of parsed pattern.
  final String? patternTypeKey;
  /// A `pattern_type_values` block as defined below.
  final List<ThreatIntelligenceIndicatorParsedPatternPatternTypeValue>? patternTypeValues;

  /// Creates a new [ThreatIntelligenceIndicatorParsedPattern].
  /// [patternTypeKey] The type key of parsed pattern.
  /// [patternTypeValues] A `pattern_type_values` block as defined below.
  ThreatIntelligenceIndicatorParsedPattern({
    this.patternTypeKey,
    this.patternTypeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patternTypeKey': ?patternTypeKey,
      'patternTypeValues': ?patternTypeValues == null ? null : pulumi.Input.encodeList<ThreatIntelligenceIndicatorParsedPatternPatternTypeValue, Map<String, dynamic>>(patternTypeValues!, (value) => value.toMap()),
    };
  }

  factory ThreatIntelligenceIndicatorParsedPattern.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorParsedPattern(
      patternTypeKey: map['patternTypeKey'] == null ? null : map['patternTypeKey'] as String,
      patternTypeValues: map['patternTypeValues'] == null ? null : pulumi.Input.decodeList<ThreatIntelligenceIndicatorParsedPatternPatternTypeValue>(map['patternTypeValues'], (value) => ThreatIntelligenceIndicatorParsedPatternPatternTypeValue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

