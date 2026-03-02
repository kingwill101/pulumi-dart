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
  ThreatIntelligenceGranularMarkingModel({
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
      language: map['language'] == null ? null : (map['language']! as String).input(),
      markingRef: map['markingRef'] == null ? null : (map['markingRef']! as int).input(),
      selectors: map['selectors'] == null ? null : ((map['selectors']! as List).cast<String>()).input(),
    );
  }
}

