// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1_get_inbound_saml_sso_profile_args_doc}
/// Arguments for getInboundSamlSsoProfile.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_get_inbound_saml_sso_profile_args_doc}
class GetInboundSamlSsoProfileArgs {
  final pulumi.Input<String> inboundSamlSsoProfileId;

  /// Creates a new [GetInboundSamlSsoProfileArgs].
  /// [inboundSamlSsoProfileId] Required.
  const GetInboundSamlSsoProfileArgs({
    required this.inboundSamlSsoProfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundSamlSsoProfileId': inboundSamlSsoProfileId,
    };
  }

  factory GetInboundSamlSsoProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlSsoProfileArgs(
      inboundSamlSsoProfileId: pulumi.Input.fromValue(map['inboundSamlSsoProfileId'] as String),
    );
  }
}

