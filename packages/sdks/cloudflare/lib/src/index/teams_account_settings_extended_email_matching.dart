// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsExtendedEmailMatching {
  /// Specify whether to match all variants of user emails (with + or . modifiers) used as criteria in Firewall policies.
  final pulumi.Input<bool?>? enabled;
  /// Indicate that this setting was shared via the Orgs API and read only for the current account.
  final pulumi.Input<bool?>? readOnly;
  /// Indicate the account tag of the account that shared this setting.
  final pulumi.Input<String?>? sourceAccount;
  /// Indicate the version number of the setting.
  final pulumi.Input<int?>? version;

  /// Creates a new [TeamsAccountSettingsExtendedEmailMatching].
  /// [enabled] Specify whether to match all variants of user emails (with + or . modifiers) used as criteria in Firewall policies.
  /// [readOnly] Indicate that this setting was shared via the Orgs API and read only for the current account.
  /// [sourceAccount] Indicate the account tag of the account that shared this setting.
  /// [version] Indicate the version number of the setting.
  const TeamsAccountSettingsExtendedEmailMatching({
    this.enabled,
    this.readOnly,
    this.sourceAccount,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'readOnly': ?readOnly,
      'sourceAccount': ?sourceAccount,
      'version': ?version,
    };
  }

  factory TeamsAccountSettingsExtendedEmailMatching.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsExtendedEmailMatching(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceAccount: (() { final guardedValue = map['sourceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
