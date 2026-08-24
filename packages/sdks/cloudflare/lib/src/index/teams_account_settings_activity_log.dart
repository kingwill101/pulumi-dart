// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsActivityLog {
  /// Specify whether to log activity.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [TeamsAccountSettingsActivityLog].
  /// [enabled] Specify whether to log activity.
  const TeamsAccountSettingsActivityLog({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory TeamsAccountSettingsActivityLog.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsActivityLog(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
