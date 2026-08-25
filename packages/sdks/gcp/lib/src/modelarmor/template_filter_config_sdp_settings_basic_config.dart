// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateFilterConfigSdpSettingsBasicConfig {
  /// Tells whether the Sensitive Data Protection basic config is enabled or
  /// disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final pulumi.Input<String?>? filterEnforcement;

  /// Creates a new [TemplateFilterConfigSdpSettingsBasicConfig].
  /// [filterEnforcement] Tells whether the Sensitive Data Protection basic config is enabled or
  const TemplateFilterConfigSdpSettingsBasicConfig({
    this.filterEnforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterEnforcement': ?filterEnforcement,
    };
  }

  factory TemplateFilterConfigSdpSettingsBasicConfig.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigSdpSettingsBasicConfig(
      filterEnforcement: (() { final guardedValue = map['filterEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
