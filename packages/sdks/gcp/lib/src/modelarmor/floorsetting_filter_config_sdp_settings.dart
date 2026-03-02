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
  FloorsettingFilterConfigSdpSettings({
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
      advancedConfig: map['advancedConfig'] == null ? null : (FloorsettingFilterConfigSdpSettingsAdvancedConfig.fromMap((map['advancedConfig'] as Map).cast<String, dynamic>())).input(),
      basicConfig: map['basicConfig'] == null ? null : (FloorsettingFilterConfigSdpSettingsBasicConfig.fromMap((map['basicConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

