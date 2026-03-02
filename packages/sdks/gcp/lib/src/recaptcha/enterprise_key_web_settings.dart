// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseKeyWebSettings {
  /// If set to true, it means allowed_domains will not be enforced.
  final pulumi.Input<bool>? allowAllDomains;
  /// If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  final pulumi.Input<bool>? allowAmpTraffic;
  /// Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  final pulumi.Input<List<String>>? allowedDomains;
  /// Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY
  final pulumi.Input<String>? challengeSecurityPreference;
  /// Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE
  final pulumi.Input<String> integrationType;

  /// Creates a new [EnterpriseKeyWebSettings].
  /// [allowAllDomains] If set to true, it means allowed_domains will not be enforced.
  /// [allowAmpTraffic] If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  /// [allowedDomains] Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  /// [challengeSecurityPreference] Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY
  /// [integrationType] Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE
  EnterpriseKeyWebSettings({
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
      'challengeSecurityPreference': ?challengeSecurityPreference,
      'integrationType': integrationType,
    };
  }

  factory EnterpriseKeyWebSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyWebSettings(
      allowAllDomains: map['allowAllDomains'] == null ? null : (map['allowAllDomains']! as bool).input(),
      allowAmpTraffic: map['allowAmpTraffic'] == null ? null : (map['allowAmpTraffic']! as bool).input(),
      allowedDomains: map['allowedDomains'] == null ? null : ((map['allowedDomains']! as List).cast<String>()).input(),
      challengeSecurityPreference: map['challengeSecurityPreference'] == null ? null : (map['challengeSecurityPreference']! as String).input(),
      integrationType: (map['integrationType'] as String).input(),
    );
  }
}

