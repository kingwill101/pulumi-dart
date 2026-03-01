// ignore_for_file: unused_element, unnecessary_cast


/// Log configuration for the connection.
class ConnectorsLogConfig {
  /// Enabled represents whether logging is enabled or not for a connection.
  final bool? enabled;

  /// Creates a new [ConnectorsLogConfig].
  /// [enabled] Enabled represents whether logging is enabled or not for a connection.
  ConnectorsLogConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConnectorsLogConfig.fromMap(Map<String, dynamic> map) {
    return ConnectorsLogConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

