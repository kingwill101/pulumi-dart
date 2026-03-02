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
  ConnectionLogConfig({
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
      enabled: (map['enabled'] as bool).input(),
      level: map['level'] == null ? null : (map['level'] as String).input(),
    );
  }
}

