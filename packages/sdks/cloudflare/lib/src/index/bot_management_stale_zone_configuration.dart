// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BotManagementStaleZoneConfiguration {
  /// Indicates that the zone's Bot Fight Mode is turned on.
  final pulumi.Input<bool?>? fightMode;
  /// Indicates that the zone's wordpress optimization for SBFM is turned on.
  final pulumi.Input<bool?>? optimizeWordpress;
  /// Indicates that the zone's definitely automated requests are being blocked or challenged.
  final pulumi.Input<String?>? sbfmDefinitelyAutomated;
  /// Indicates that the zone's likely automated requests are being blocked or challenged.
  final pulumi.Input<String?>? sbfmLikelyAutomated;
  /// Indicates that the zone's static resource protection is turned on.
  final pulumi.Input<String?>? sbfmStaticResourceProtection;
  /// Indicates that the zone's verified bot requests are being blocked.
  final pulumi.Input<String?>? sbfmVerifiedBots;
  /// Indicates that the zone's session score tracking is disabled.
  final pulumi.Input<bool?>? suppressSessionScore;

  /// Creates a new [BotManagementStaleZoneConfiguration].
  /// [fightMode] Indicates that the zone's Bot Fight Mode is turned on.
  /// [optimizeWordpress] Indicates that the zone's wordpress optimization for SBFM is turned on.
  /// [sbfmDefinitelyAutomated] Indicates that the zone's definitely automated requests are being blocked or challenged.
  /// [sbfmLikelyAutomated] Indicates that the zone's likely automated requests are being blocked or challenged.
  /// [sbfmStaticResourceProtection] Indicates that the zone's static resource protection is turned on.
  /// [sbfmVerifiedBots] Indicates that the zone's verified bot requests are being blocked.
  /// [suppressSessionScore] Indicates that the zone's session score tracking is disabled.
  const BotManagementStaleZoneConfiguration({
    this.fightMode,
    this.optimizeWordpress,
    this.sbfmDefinitelyAutomated,
    this.sbfmLikelyAutomated,
    this.sbfmStaticResourceProtection,
    this.sbfmVerifiedBots,
    this.suppressSessionScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fightMode': ?fightMode,
      'optimizeWordpress': ?optimizeWordpress,
      'sbfmDefinitelyAutomated': ?sbfmDefinitelyAutomated,
      'sbfmLikelyAutomated': ?sbfmLikelyAutomated,
      'sbfmStaticResourceProtection': ?sbfmStaticResourceProtection,
      'sbfmVerifiedBots': ?sbfmVerifiedBots,
      'suppressSessionScore': ?suppressSessionScore,
    };
  }

  factory BotManagementStaleZoneConfiguration.fromMap(Map<String, dynamic> map) {
    return BotManagementStaleZoneConfiguration(
      fightMode: (() { final guardedValue = map['fightMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      optimizeWordpress: (() { final guardedValue = map['optimizeWordpress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sbfmDefinitelyAutomated: (() { final guardedValue = map['sbfmDefinitelyAutomated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbfmLikelyAutomated: (() { final guardedValue = map['sbfmLikelyAutomated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbfmStaticResourceProtection: (() { final guardedValue = map['sbfmStaticResourceProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbfmVerifiedBots: (() { final guardedValue = map['sbfmVerifiedBots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suppressSessionScore: (() { final guardedValue = map['suppressSessionScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
