// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionLogConfig {
  /// Enabled represents whether logging is enabled or not for a connection.
  final pulumi.Input<bool> enabled;
  /// Log configuration level.
  /// Possible values are: `LOG_LEVEL_UNSPECIFIED`, `ERROR`, `INFO`, `DEBUG`.
  final pulumi.Input<String>? level;

  /// Creates a new [ConnectionLogConfig].
  /// [enabled] Enabled represents whether logging is enabled or not for a connection.
  /// [level] Log configuration level.
  const ConnectionLogConfig({
    required this.enabled,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'level': ?level,
    };
  }

  factory ConnectionLogConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionLogConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

