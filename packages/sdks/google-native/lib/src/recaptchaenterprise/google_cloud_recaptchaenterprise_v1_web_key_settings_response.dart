// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings specific to keys that can be used by websites.
class GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse {
  /// Optional. If set to true, it means allowed_domains will not be enforced.
  final pulumi.Input<bool> allowAllDomains;
  /// Optional. If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  final pulumi.Input<bool> allowAmpTraffic;
  /// Optional. Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  final pulumi.Input<List<String>> allowedDomains;
  /// Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.
  final pulumi.Input<String> challengeSecurityPreference;
  /// Describes how this key is integrated with the website.
  final pulumi.Input<String> integrationType;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse].
  /// [allowAllDomains] Optional. If set to true, it means allowed_domains will not be enforced.
  /// [allowAmpTraffic] Optional. If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  /// [allowedDomains] Optional. Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  /// [challengeSecurityPreference] Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.
  /// [integrationType] Describes how this key is integrated with the website.
  const GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse({
    required this.allowAllDomains,
    required this.allowAmpTraffic,
    required this.allowedDomains,
    required this.challengeSecurityPreference,
    required this.integrationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllDomains': allowAllDomains,
      'allowAmpTraffic': allowAmpTraffic,
      'allowedDomains': allowedDomains,
      'challengeSecurityPreference': challengeSecurityPreference,
      'integrationType': integrationType,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse(
      allowAllDomains: pulumi.Input.fromValue(map['allowAllDomains'] as bool),
      allowAmpTraffic: pulumi.Input.fromValue(map['allowAmpTraffic'] as bool),
      allowedDomains: pulumi.Input.fromValue((map['allowedDomains'] as List).cast<String>()),
      challengeSecurityPreference: pulumi.Input.fromValue(map['challengeSecurityPreference'] as String),
      integrationType: pulumi.Input.fromValue(map['integrationType'] as String),
    );
  }
}

