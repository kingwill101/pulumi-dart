// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsTlsDecrypt {
  /// Specify whether to inspect encrypted HTTP traffic.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [TeamsAccountSettingsTlsDecrypt].
  /// [enabled] Specify whether to inspect encrypted HTTP traffic.
  const TeamsAccountSettingsTlsDecrypt({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory TeamsAccountSettingsTlsDecrypt.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsTlsDecrypt(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
