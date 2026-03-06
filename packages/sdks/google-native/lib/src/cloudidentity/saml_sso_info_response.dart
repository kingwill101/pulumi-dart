// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details that are applicable when `sso_mode` == `SAML_SSO`.
class SamlSsoInfoResponse {
  /// Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  final pulumi.Input<String> inboundSamlSsoProfile;

  /// Creates a new [SamlSsoInfoResponse].
  /// [inboundSamlSsoProfile] Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  const SamlSsoInfoResponse({
    required this.inboundSamlSsoProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundSamlSsoProfile': inboundSamlSsoProfile,
    };
  }

  factory SamlSsoInfoResponse.fromMap(Map<String, dynamic> map) {
    return SamlSsoInfoResponse(
      inboundSamlSsoProfile: pulumi.Input.fromValue(map['inboundSamlSsoProfile'] as String),
    );
  }
}

