// ignore_for_file: unused_element, unnecessary_cast


/// Enabled configuration.
class EnabledConfig {
  /// True if configuration is enabled, false if it is disabled and null if configuration is not set.
  final bool? enabled;

  /// Creates a new [EnabledConfig].
  /// [enabled] True if configuration is enabled, false if it is disabled and null if configuration is not set.
  EnabledConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory EnabledConfig.fromMap(Map<String, dynamic> map) {
    return EnabledConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

