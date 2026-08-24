// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsPayloadLog {
  /// Enable DLP payload logging for this rule.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [TeamsRuleRuleSettingsPayloadLog].
  /// [enabled] Enable DLP payload logging for this rule.
  const TeamsRuleRuleSettingsPayloadLog({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory TeamsRuleRuleSettingsPayloadLog.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsPayloadLog(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
