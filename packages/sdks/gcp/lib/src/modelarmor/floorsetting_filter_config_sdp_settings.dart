// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'floorsetting_filter_config_sdp_settings_advanced_config.dart';
import 'floorsetting_filter_config_sdp_settings_basic_config.dart';

class FloorsettingFilterConfigSdpSettings {
  /// Sensitive Data Protection Advanced configuration.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigSdpSettingsAdvancedConfig>? advancedConfig;
  /// Sensitive Data Protection basic configuration.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigSdpSettingsBasicConfig>? basicConfig;

  /// Creates a new [FloorsettingFilterConfigSdpSettings].
  /// [advancedConfig] Sensitive Data Protection Advanced configuration.
  /// [basicConfig] Sensitive Data Protection basic configuration.
  const FloorsettingFilterConfigSdpSettings({
    this.advancedConfig,
    this.basicConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedConfig': ?pulumi.Input.mapOptionalInputValue<FloorsettingFilterConfigSdpSettingsAdvancedConfig, Map<String, dynamic>>(advancedConfig, (value) => value.toMap()),
      'basicConfig': ?pulumi.Input.mapOptionalInputValue<FloorsettingFilterConfigSdpSettingsBasicConfig, Map<String, dynamic>>(basicConfig, (value) => value.toMap()),
    };
  }

  factory FloorsettingFilterConfigSdpSettings.fromMap(Map<String, dynamic> map) {
    return FloorsettingFilterConfigSdpSettings(
      advancedConfig: (() { final guardedValue = map['advancedConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingFilterConfigSdpSettingsAdvancedConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      basicConfig: (() { final guardedValue = map['basicConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingFilterConfigSdpSettingsBasicConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
