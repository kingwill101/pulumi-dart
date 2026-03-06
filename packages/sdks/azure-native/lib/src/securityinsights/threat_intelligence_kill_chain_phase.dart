// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes threat kill chain phase entity
class ThreatIntelligenceKillChainPhase {
  /// Kill chainName name
  final pulumi.Input<String>? killChainName;
  /// Phase name
  final pulumi.Input<String>? phaseName;

  /// Creates a new [ThreatIntelligenceKillChainPhase].
  /// [killChainName] Kill chainName name
  /// [phaseName] Phase name
  const ThreatIntelligenceKillChainPhase({
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
      killChainName: (() { final guardedValue = map['killChainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phaseName: (() { final guardedValue = map['phaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

