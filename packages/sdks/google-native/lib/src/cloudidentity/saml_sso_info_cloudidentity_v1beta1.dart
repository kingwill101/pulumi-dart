// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details that are applicable when `sso_mode` == `SAML_SSO`.
class SamlSsoInfoCloudidentityV1beta1 {
  /// Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  final pulumi.Input<String> inboundSamlSsoProfile;

  /// Creates a new [SamlSsoInfoCloudidentityV1beta1].
  /// [inboundSamlSsoProfile] Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  SamlSsoInfoCloudidentityV1beta1({
    required this.inboundSamlSsoProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundSamlSsoProfile': inboundSamlSsoProfile,
    };
  }

  factory SamlSsoInfoCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return SamlSsoInfoCloudidentityV1beta1(
      inboundSamlSsoProfile: (map['inboundSamlSsoProfile'] as String).input(),
    );
  }
}

