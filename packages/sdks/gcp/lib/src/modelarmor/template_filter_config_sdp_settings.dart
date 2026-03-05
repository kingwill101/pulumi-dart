// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config_sdp_settings_advanced_config.dart';
import 'template_filter_config_sdp_settings_basic_config.dart';

class TemplateFilterConfigSdpSettings {
  /// Sensitive Data Protection Advanced configuration.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigSdpSettingsAdvancedConfig>? advancedConfig;
  /// Sensitive Data Protection basic configuration.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigSdpSettingsBasicConfig>? basicConfig;

  /// Creates a new [TemplateFilterConfigSdpSettings].
  /// [advancedConfig] Sensitive Data Protection Advanced configuration.
  /// [basicConfig] Sensitive Data Protection basic configuration.
  TemplateFilterConfigSdpSettings({
    this.advancedConfig,
    this.basicConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedConfig': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigSdpSettingsAdvancedConfig, Map<String, dynamic>>(advancedConfig, (value) => value.toMap()),
      'basicConfig': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigSdpSettingsBasicConfig, Map<String, dynamic>>(basicConfig, (value) => value.toMap()),
    };
  }

  factory TemplateFilterConfigSdpSettings.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigSdpSettings(
      advancedConfig: (() { final guardedValue = map['advancedConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigSdpSettingsAdvancedConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      basicConfig: (() { final guardedValue = map['basicConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigSdpSettingsBasicConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

