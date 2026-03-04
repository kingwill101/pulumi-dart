// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_web_key_settings_challenge_security_preference.dart';
import 'google_cloud_recaptchaenterprise_v1_web_key_settings_integration_type.dart';

/// Settings specific to keys that can be used by websites.
class GoogleCloudRecaptchaenterpriseV1WebKeySettings {
  /// Optional. If set to true, it means allowed_domains will not be enforced.
  final pulumi.Input<bool>? allowAllDomains;

  /// Optional. If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  final pulumi.Input<bool>? allowAmpTraffic;

  /// Optional. Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  final pulumi.Input<List<String>>? allowedDomains;

  /// Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.
  final pulumi.Input<
    GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference
  >?
  challengeSecurityPreference;

  /// Describes how this key is integrated with the website.
  final pulumi.Input<
    GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType
  >
  integrationType;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1WebKeySettings].
  /// [allowAllDomains] Optional. If set to true, it means allowed_domains will not be enforced.
  /// [allowAmpTraffic] Optional. If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  /// [allowedDomains] Optional. Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  /// [challengeSecurityPreference] Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.
  /// [integrationType] Describes how this key is integrated with the website.
  GoogleCloudRecaptchaenterpriseV1WebKeySettings({
    this.allowAllDomains,
    this.allowAmpTraffic,
    this.allowedDomains,
    this.challengeSecurityPreference,
    required this.integrationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllDomains': ?allowAllDomains,
      'allowAmpTraffic': ?allowAmpTraffic,
      'allowedDomains': ?allowedDomains,
      'challengeSecurityPreference':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference,
            String
          >(challengeSecurityPreference, (value) => value.wireValue),
      'integrationType':
          pulumi.Input.mapInputValue<
            GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType,
            String
          >(integrationType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRecaptchaenterpriseV1WebKeySettings(
      allowAllDomains: (() {
        final guardedValue = map['allowAllDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowAmpTraffic: (() {
        final guardedValue = map['allowAmpTraffic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowedDomains: (() {
        final guardedValue = map['allowedDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      challengeSecurityPreference: (() {
        final guardedValue = map['challengeSecurityPreference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      integrationType: pulumi.Input.fromValue(
        GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType.fromValue(
          map['integrationType']! as String,
        ),
      ),
    );
  }
}
