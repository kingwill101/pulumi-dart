// ignore_for_file: unused_element, unnecessary_cast


class ThreatIntelligenceIndicatorKillChainPhase {
  /// The name which should be used for the Lockheed Martin cyber kill chain phase.
  final String? name;

  /// Creates a new [ThreatIntelligenceIndicatorKillChainPhase].
  /// [name] The name which should be used for the Lockheed Martin cyber kill chain phase.
  ThreatIntelligenceIndicatorKillChainPhase({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ThreatIntelligenceIndicatorKillChainPhase.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorKillChainPhase(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

