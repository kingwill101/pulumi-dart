// ignore_for_file: unused_element, unnecessary_cast


/// Describes threat kill chain phase entity
class ThreatIntelligenceKillChainPhase {
  /// Kill chainName name
  final String? killChainName;
  /// Phase name
  final String? phaseName;

  /// Creates a new [ThreatIntelligenceKillChainPhase].
  /// [killChainName] Kill chainName name
  /// [phaseName] Phase name
  ThreatIntelligenceKillChainPhase({
    this.killChainName,
    this.phaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'killChainName': ?killChainName,
      'phaseName': ?phaseName,
    };
  }

  factory ThreatIntelligenceKillChainPhase.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceKillChainPhase(
      killChainName: map['killChainName'] == null ? null : map['killChainName'] as String,
      phaseName: map['phaseName'] == null ? null : map['phaseName'] as String,
    );
  }
}

