// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1beta1_get_inbound_saml_sso_profile_cloudidentity_v1beta1_args_doc}
/// Arguments for getInboundSamlSsoProfile.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_get_inbound_saml_sso_profile_cloudidentity_v1beta1_args_doc}
class GetInboundSamlSsoProfileCloudidentityV1beta1Args {
  final pulumi.Input<String> inboundSamlSsoProfileId;

  /// Creates a new [GetInboundSamlSsoProfileCloudidentityV1beta1Args].
  /// [inboundSamlSsoProfileId] Required.
  GetInboundSamlSsoProfileCloudidentityV1beta1Args({
    required this.inboundSamlSsoProfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundSamlSsoProfileId': inboundSamlSsoProfileId,
    };
  }

  factory GetInboundSamlSsoProfileCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlSsoProfileCloudidentityV1beta1Args(
      inboundSamlSsoProfileId: pulumi.Input.fromValue(map['inboundSamlSsoProfileId'] as String),
    );
  }
}

