// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details that are applicable when `sso_mode` == `SAML_SSO`.
class SamlSsoInfo {
  /// Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  final pulumi.Input<String> inboundSamlSsoProfile;

  /// Creates a new [SamlSsoInfo].
  /// [inboundSamlSsoProfile] Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  const SamlSsoInfo({
    required this.inboundSamlSsoProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundSamlSsoProfile': inboundSamlSsoProfile,
    };
  }

  factory SamlSsoInfo.fromMap(Map<String, dynamic> map) {
    return SamlSsoInfo(
      inboundSamlSsoProfile: pulumi.Input.fromValue(map['inboundSamlSsoProfile'] as String),
    );
  }
}
