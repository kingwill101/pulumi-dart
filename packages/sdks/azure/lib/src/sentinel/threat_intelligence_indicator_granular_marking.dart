// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreatIntelligenceIndicatorGranularMarking {
  /// The language of granular marking of the Threat Intelligence Indicator.
  final pulumi.Input<String>? language;
  /// The reference of the granular marking of the Threat Intelligence Indicator.
  final pulumi.Input<String>? markingRef;
  /// A list of selectors of the granular marking of the Threat Intelligence Indicator.
  final pulumi.Input<List<String>>? selectors;

  /// Creates a new [ThreatIntelligenceIndicatorGranularMarking].
  /// [language] The language of granular marking of the Threat Intelligence Indicator.
  /// [markingRef] The reference of the granular marking of the Threat Intelligence Indicator.
  /// [selectors] A list of selectors of the granular marking of the Threat Intelligence Indicator.
  ThreatIntelligenceIndicatorGranularMarking({
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

  factory ThreatIntelligenceIndicatorGranularMarking.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorGranularMarking(
      language: map['language'] == null ? null : (map['language'] as String).input(),
      markingRef: map['markingRef'] == null ? null : (map['markingRef'] as String).input(),
      selectors: map['selectors'] == null ? null : ((map['selectors'] as List).cast<String>()).input(),
    );
  }
}

