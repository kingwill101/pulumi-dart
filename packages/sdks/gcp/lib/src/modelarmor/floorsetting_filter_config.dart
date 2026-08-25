// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'floorsetting_filter_config_malicious_uri_filter_settings.dart';
import 'floorsetting_filter_config_pi_and_jailbreak_filter_settings.dart';
import 'floorsetting_filter_config_rai_settings.dart';
import 'floorsetting_filter_config_sdp_settings.dart';

class FloorsettingFilterConfig {
  /// Malicious URI filter settings.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigMaliciousUriFilterSettings?>? maliciousUriFilterSettings;
  /// Prompt injection and Jailbreak Filter settings.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigPiAndJailbreakFilterSettings?>? piAndJailbreakFilterSettings;
  /// Responsible AI Filter settings.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigRaiSettings?>? raiSettings;
  /// Sensitive Data Protection settings.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigSdpSettings?>? sdpSettings;

  /// Creates a new [FloorsettingFilterConfig].
  /// [maliciousUriFilterSettings] Malicious URI filter settings.
  /// [piAndJailbreakFilterSettings] Prompt injection and Jailbreak Filter settings.
  /// [raiSettings] Responsible AI Filter settings.
  /// [sdpSettings] Sensitive Data Protection settings.
  const FloorsettingFilterConfig({
    this.maliciousUriFilterSettings,
    this.piAndJailbreakFilterSettings,
    this.raiSettings,
    this.sdpSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maliciousUriFilterSettings': ?pulumi.Input.mapOptionalInputValue<FloorsettingFilterConfigMaliciousUriFilterSettings, Map<String, dynamic>>(maliciousUriFilterSettings, (value) => value.toMap()),
      'piAndJailbreakFilterSettings': ?pulumi.Input.mapOptionalInputValue<FloorsettingFilterConfigPiAndJailbreakFilterSettings, Map<String, dynamic>>(piAndJailbreakFilterSettings, (value) => value.toMap()),
      'raiSettings': ?pulumi.Input.mapOptionalInputValue<FloorsettingFilterConfigRaiSettings, Map<String, dynamic>>(raiSettings, (value) => value.toMap()),
      'sdpSettings': ?pulumi.Input.mapOptionalInputValue<FloorsettingFilterConfigSdpSettings, Map<String, dynamic>>(sdpSettings, (value) => value.toMap()),
    };
  }

  factory FloorsettingFilterConfig.fromMap(Map<String, dynamic> map) {
    return FloorsettingFilterConfig(
      maliciousUriFilterSettings: (() { final guardedValue = map['maliciousUriFilterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingFilterConfigMaliciousUriFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      piAndJailbreakFilterSettings: (() { final guardedValue = map['piAndJailbreakFilterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingFilterConfigPiAndJailbreakFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      raiSettings: (() { final guardedValue = map['raiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingFilterConfigRaiSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdpSettings: (() { final guardedValue = map['sdpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FloorsettingFilterConfigSdpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
