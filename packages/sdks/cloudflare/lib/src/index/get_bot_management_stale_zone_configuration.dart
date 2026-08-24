// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBotManagementStaleZoneConfiguration {
  /// Indicates that the zone's Bot Fight Mode is turned on.
  final pulumi.Input<bool> fightMode;
  /// Indicates that the zone's wordpress optimization for SBFM is turned on.
  final pulumi.Input<bool> optimizeWordpress;
  /// Indicates that the zone's definitely automated requests are being blocked or challenged.
  final pulumi.Input<String> sbfmDefinitelyAutomated;
  /// Indicates that the zone's likely automated requests are being blocked or challenged.
  final pulumi.Input<String> sbfmLikelyAutomated;
  /// Indicates that the zone's static resource protection is turned on.
  final pulumi.Input<String> sbfmStaticResourceProtection;
  /// Indicates that the zone's verified bot requests are being blocked.
  final pulumi.Input<String> sbfmVerifiedBots;
  /// Indicates that the zone's session score tracking is disabled.
  final pulumi.Input<bool> suppressSessionScore;

  /// Creates a new [GetBotManagementStaleZoneConfiguration].
  /// [fightMode] Indicates that the zone's Bot Fight Mode is turned on.
  /// [optimizeWordpress] Indicates that the zone's wordpress optimization for SBFM is turned on.
  /// [sbfmDefinitelyAutomated] Indicates that the zone's definitely automated requests are being blocked or challenged.
  /// [sbfmLikelyAutomated] Indicates that the zone's likely automated requests are being blocked or challenged.
  /// [sbfmStaticResourceProtection] Indicates that the zone's static resource protection is turned on.
  /// [sbfmVerifiedBots] Indicates that the zone's verified bot requests are being blocked.
  /// [suppressSessionScore] Indicates that the zone's session score tracking is disabled.
  const GetBotManagementStaleZoneConfiguration({
    required this.fightMode,
    required this.optimizeWordpress,
    required this.sbfmDefinitelyAutomated,
    required this.sbfmLikelyAutomated,
    required this.sbfmStaticResourceProtection,
    required this.sbfmVerifiedBots,
    required this.suppressSessionScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fightMode': fightMode,
      'optimizeWordpress': optimizeWordpress,
      'sbfmDefinitelyAutomated': sbfmDefinitelyAutomated,
      'sbfmLikelyAutomated': sbfmLikelyAutomated,
      'sbfmStaticResourceProtection': sbfmStaticResourceProtection,
      'sbfmVerifiedBots': sbfmVerifiedBots,
      'suppressSessionScore': suppressSessionScore,
    };
  }

  factory GetBotManagementStaleZoneConfiguration.fromMap(Map<String, dynamic> map) {
    return GetBotManagementStaleZoneConfiguration(
      fightMode: pulumi.Input.fromValue(map['fightMode'] as bool),
      optimizeWordpress: pulumi.Input.fromValue(map['optimizeWordpress'] as bool),
      sbfmDefinitelyAutomated: pulumi.Input.fromValue(map['sbfmDefinitelyAutomated'] as String),
      sbfmLikelyAutomated: pulumi.Input.fromValue(map['sbfmLikelyAutomated'] as String),
      sbfmStaticResourceProtection: pulumi.Input.fromValue(map['sbfmStaticResourceProtection'] as String),
      sbfmVerifiedBots: pulumi.Input.fromValue(map['sbfmVerifiedBots'] as String),
      suppressSessionScore: pulumi.Input.fromValue(map['suppressSessionScore'] as bool),
    );
  }
}
