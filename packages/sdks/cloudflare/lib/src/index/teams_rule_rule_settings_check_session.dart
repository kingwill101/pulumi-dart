// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsCheckSession {
  /// Sets the required session freshness threshold. The API returns a normalized version of this value.
  final pulumi.Input<String?>? duration;
  /// Enable session enforcement.
  final pulumi.Input<bool?>? enforce;

  /// Creates a new [TeamsRuleRuleSettingsCheckSession].
  /// [duration] Sets the required session freshness threshold. The API returns a normalized version of this value.
  /// [enforce] Enable session enforcement.
  const TeamsRuleRuleSettingsCheckSession({
    this.duration,
    this.enforce,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'enforce': ?enforce,
    };
  }

  factory TeamsRuleRuleSettingsCheckSession.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsCheckSession(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforce: (() { final guardedValue = map['enforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
