// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsUntrustedCert {
  /// Defines the action performed when an untrusted certificate seen. The default action an error with HTTP code 526.
  /// Available values: "passThrough", "block", "error".
  final pulumi.Input<String?>? action;

  /// Creates a new [TeamsRuleRuleSettingsUntrustedCert].
  /// [action] Defines the action performed when an untrusted certificate seen. The default action an error with HTTP code 526.
  const TeamsRuleRuleSettingsUntrustedCert({
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
    };
  }

  factory TeamsRuleRuleSettingsUntrustedCert.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsUntrustedCert(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
