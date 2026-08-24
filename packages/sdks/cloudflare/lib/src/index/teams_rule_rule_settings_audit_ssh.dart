// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsAuditSsh {
  /// Enable SSH command logging.
  final pulumi.Input<bool?>? commandLogging;

  /// Creates a new [TeamsRuleRuleSettingsAuditSsh].
  /// [commandLogging] Enable SSH command logging.
  const TeamsRuleRuleSettingsAuditSsh({
    this.commandLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLogging': ?commandLogging,
    };
  }

  factory TeamsRuleRuleSettingsAuditSsh.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsAuditSsh(
      commandLogging: (() { final guardedValue = map['commandLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
