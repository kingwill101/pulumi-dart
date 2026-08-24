// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsProtocolDetection {
  /// Specify whether to detect protocols from the initial bytes of client traffic.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [TeamsAccountSettingsProtocolDetection].
  /// [enabled] Specify whether to detect protocols from the initial bytes of client traffic.
  const TeamsAccountSettingsProtocolDetection({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory TeamsAccountSettingsProtocolDetection.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsProtocolDetection(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
