// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes threat granular marking model entity
class ThreatIntelligenceGranularMarkingModel {
  /// Language granular marking model
  final pulumi.Input<String>? language;
  /// marking reference granular marking model
  final pulumi.Input<int>? markingRef;
  /// granular marking model selectors
  final pulumi.Input<List<String>>? selectors;

  /// Creates a new [ThreatIntelligenceGranularMarkingModel].
  /// [language] Language granular marking model
  /// [markingRef] marking reference granular marking model
  /// [selectors] granular marking model selectors
  const ThreatIntelligenceGranularMarkingModel({
    this.language,
    this.markingRef,
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'language': ?language,
      'markingRef': ?markingRef,
      'selectors': ?selectors,
    };
  }

  factory ThreatIntelligenceGranularMarkingModel.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceGranularMarkingModel(
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      markingRef: (() { final guardedValue = map['markingRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
