// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'threat_intelligence_parsed_pattern_type_value.dart';

/// Describes parsed pattern entity
class ThreatIntelligenceParsedPattern {
  /// Pattern type key
  final pulumi.Input<String?>? patternTypeKey;
  /// Pattern type keys
  final pulumi.Input<List<ThreatIntelligenceParsedPatternTypeValue>?>? patternTypeValues;

  /// Creates a new [ThreatIntelligenceParsedPattern].
  /// [patternTypeKey] Pattern type key
  /// [patternTypeValues] Pattern type keys
  const ThreatIntelligenceParsedPattern({
    this.patternTypeKey,
    this.patternTypeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patternTypeKey': ?patternTypeKey,
      'patternTypeValues': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceParsedPatternTypeValue>, List<Map<String, dynamic>>>(patternTypeValues, (value) => pulumi.Input.encodeList<ThreatIntelligenceParsedPatternTypeValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ThreatIntelligenceParsedPattern.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceParsedPattern(
      patternTypeKey: (() { final guardedValue = map['patternTypeKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternTypeValues: (() { final guardedValue = map['patternTypeValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreatIntelligenceParsedPatternTypeValue>(guardedValue, (value) => ThreatIntelligenceParsedPatternTypeValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
