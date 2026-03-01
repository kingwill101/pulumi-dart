// ignore_for_file: unused_element, unnecessary_cast


class TemplateFilterConfigSdpSettingsBasicConfig {
  /// Tells whether the Sensitive Data Protection basic config is enabled or
  /// disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final String? filterEnforcement;

  /// Creates a new [TemplateFilterConfigSdpSettingsBasicConfig].
  /// [filterEnforcement] Tells whether the Sensitive Data Protection basic config is enabled or
  TemplateFilterConfigSdpSettingsBasicConfig({
    this.filterEnforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterEnforcement': ?filterEnforcement,
    };
  }

  factory TemplateFilterConfigSdpSettingsBasicConfig.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigSdpSettingsBasicConfig(
      filterEnforcement: map['filterEnforcement'] == null ? null : map['filterEnforcement'] as String,
    );
  }
}

