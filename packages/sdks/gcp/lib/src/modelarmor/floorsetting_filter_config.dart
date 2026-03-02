// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'floorsetting_filter_config_malicious_uri_filter_settings.dart';
import 'floorsetting_filter_config_pi_and_jailbreak_filter_settings.dart';
import 'floorsetting_filter_config_rai_settings.dart';
import 'floorsetting_filter_config_sdp_settings.dart';

class FloorsettingFilterConfig {
  /// Malicious URI filter settings.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigMaliciousUriFilterSettings>? maliciousUriFilterSettings;
  /// Prompt injection and Jailbreak Filter settings.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigPiAndJailbreakFilterSettings>? piAndJailbreakFilterSettings;
  /// Responsible AI Filter settings.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigRaiSettings>? raiSettings;
  /// Sensitive Data Protection settings.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfigSdpSettings>? sdpSettings;

  /// Creates a new [FloorsettingFilterConfig].
  /// [maliciousUriFilterSettings] Malicious URI filter settings.
  /// [piAndJailbreakFilterSettings] Prompt injection and Jailbreak Filter settings.
  /// [raiSettings] Responsible AI Filter settings.
  /// [sdpSettings] Sensitive Data Protection settings.
  FloorsettingFilterConfig({
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
      maliciousUriFilterSettings: map['maliciousUriFilterSettings'] == null ? null : (FloorsettingFilterConfigMaliciousUriFilterSettings.fromMap((map['maliciousUriFilterSettings']! as Map).cast<String, dynamic>())).input(),
      piAndJailbreakFilterSettings: map['piAndJailbreakFilterSettings'] == null ? null : (FloorsettingFilterConfigPiAndJailbreakFilterSettings.fromMap((map['piAndJailbreakFilterSettings']! as Map).cast<String, dynamic>())).input(),
      raiSettings: map['raiSettings'] == null ? null : (FloorsettingFilterConfigRaiSettings.fromMap((map['raiSettings']! as Map).cast<String, dynamic>())).input(),
      sdpSettings: map['sdpSettings'] == null ? null : (FloorsettingFilterConfigSdpSettings.fromMap((map['sdpSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

