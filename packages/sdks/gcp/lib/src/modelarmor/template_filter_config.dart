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
  TemplateFilterConfig({
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
      maliciousUriFilterSettings: map['maliciousUriFilterSettings'] == null ? null : (TemplateFilterConfigMaliciousUriFilterSettings.fromMap((map['maliciousUriFilterSettings']! as Map).cast<String, dynamic>())).input(),
      piAndJailbreakFilterSettings: map['piAndJailbreakFilterSettings'] == null ? null : (TemplateFilterConfigPiAndJailbreakFilterSettings.fromMap((map['piAndJailbreakFilterSettings']! as Map).cast<String, dynamic>())).input(),
      raiSettings: map['raiSettings'] == null ? null : (TemplateFilterConfigRaiSettings.fromMap((map['raiSettings']! as Map).cast<String, dynamic>())).input(),
      sdpSettings: map['sdpSettings'] == null ? null : (TemplateFilterConfigSdpSettings.fromMap((map['sdpSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

