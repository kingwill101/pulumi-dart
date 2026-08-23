// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config_malicious_uri_filter_settings.dart';
import 'template_filter_config_pi_and_jailbreak_filter_settings.dart';
import 'template_filter_config_rai_settings.dart';
import 'template_filter_config_sdp_settings.dart';

class TemplateFilterConfig {
  /// Malicious URI filter settings.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigMaliciousUriFilterSettings>? maliciousUriFilterSettings;
  /// Prompt injection and Jailbreak Filter settings.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigPiAndJailbreakFilterSettings>? piAndJailbreakFilterSettings;
  /// Responsible AI Filter settings.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigRaiSettings>? raiSettings;
  /// Sensitive Data Protection settings.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigSdpSettings>? sdpSettings;

  /// Creates a new [TemplateFilterConfig].
  /// [maliciousUriFilterSettings] Malicious URI filter settings.
  /// [piAndJailbreakFilterSettings] Prompt injection and Jailbreak Filter settings.
  /// [raiSettings] Responsible AI Filter settings.
  /// [sdpSettings] Sensitive Data Protection settings.
  const TemplateFilterConfig({
    this.maliciousUriFilterSettings,
    this.piAndJailbreakFilterSettings,
    this.raiSettings,
    this.sdpSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maliciousUriFilterSettings': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigMaliciousUriFilterSettings, Map<String, dynamic>>(maliciousUriFilterSettings, (value) => value.toMap()),
      'piAndJailbreakFilterSettings': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigPiAndJailbreakFilterSettings, Map<String, dynamic>>(piAndJailbreakFilterSettings, (value) => value.toMap()),
      'raiSettings': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigRaiSettings, Map<String, dynamic>>(raiSettings, (value) => value.toMap()),
      'sdpSettings': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigSdpSettings, Map<String, dynamic>>(sdpSettings, (value) => value.toMap()),
    };
  }

  factory TemplateFilterConfig.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfig(
      maliciousUriFilterSettings: (() { final guardedValue = map['maliciousUriFilterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigMaliciousUriFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      piAndJailbreakFilterSettings: (() { final guardedValue = map['piAndJailbreakFilterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigPiAndJailbreakFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      raiSettings: (() { final guardedValue = map['raiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigRaiSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdpSettings: (() { final guardedValue = map['sdpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigSdpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
