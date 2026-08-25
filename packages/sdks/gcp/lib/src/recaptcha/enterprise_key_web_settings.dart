// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_key_web_settings_challenge_settings.dart';

class EnterpriseKeyWebSettings {
  /// If set to true, it means allowedDomains will not be enforced.
  final pulumi.Input<bool?>? allowAllDomains;
  /// If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  final pulumi.Input<bool?>? allowAmpTraffic;
  /// Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  final pulumi.Input<List<String>?>? allowedDomains;
  /// Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY
  final pulumi.Input<String?>? challengeSecurityPreference;
  /// Settings for POLICY_BASED_CHALLENGE keys to control when a challenge is triggered.
  /// Structure is documented below.
  final pulumi.Input<EnterpriseKeyWebSettingsChallengeSettings?>? challengeSettings;
  /// Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE, POLICY_BASED_CHALLENGE
  final pulumi.Input<String> integrationType;

  /// Creates a new [EnterpriseKeyWebSettings].
  /// [allowAllDomains] If set to true, it means allowedDomains will not be enforced.
  /// [allowAmpTraffic] If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  /// [allowedDomains] Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  /// [challengeSecurityPreference] Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY
  /// [challengeSettings] Settings for POLICY_BASED_CHALLENGE keys to control when a challenge is triggered.
  /// [integrationType] Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE, POLICY_BASED_CHALLENGE
  const EnterpriseKeyWebSettings({
    this.allowAllDomains,
    this.allowAmpTraffic,
    this.allowedDomains,
    this.challengeSecurityPreference,
    this.challengeSettings,
    required this.integrationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllDomains': ?allowAllDomains,
      'allowAmpTraffic': ?allowAmpTraffic,
      'allowedDomains': ?allowedDomains,
      'challengeSecurityPreference': ?challengeSecurityPreference,
      'challengeSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyWebSettingsChallengeSettings, Map<String, dynamic>>(challengeSettings, (value) => value.toMap()),
      'integrationType': integrationType,
    };
  }

  factory EnterpriseKeyWebSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyWebSettings(
      allowAllDomains: (() { final guardedValue = map['allowAllDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowAmpTraffic: (() { final guardedValue = map['allowAmpTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedDomains: (() { final guardedValue = map['allowedDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      challengeSecurityPreference: (() { final guardedValue = map['challengeSecurityPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      challengeSettings: (() { final guardedValue = map['challengeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseKeyWebSettingsChallengeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integrationType: pulumi.Input.fromValue(map['integrationType'] as String),
    );
  }
}
