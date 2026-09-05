// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreatIntelligenceIndicatorKillChainPhase {
  /// The name which should be used for the Lockheed Martin cyber kill chain phase.
  final pulumi.Input<String?>? name;

  /// Creates a new [ThreatIntelligenceIndicatorKillChainPhase].
  /// [name] The name which should be used for the Lockheed Martin cyber kill chain phase.
  const ThreatIntelligenceIndicatorKillChainPhase({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ThreatIntelligenceIndicatorKillChainPhase.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorKillChainPhase(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
