// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saml_idp_config_cloudidentity_v1beta1.dart';

/// {@template pulumi_cloudidentity_v1beta1_inbound_saml_sso_profile_cloudidentity_v1beta1_args_doc}
/// The set of arguments for InboundSamlSsoProfile.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_inbound_saml_sso_profile_cloudidentity_v1beta1_args_doc}
class InboundSamlSsoProfileCloudidentityV1beta1Args {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final pulumi.Input<String>? customer;
  /// Human-readable name of the SAML SSO profile.
  final pulumi.Input<String>? displayName;
  /// SAML identity provider configuration.
  final pulumi.Input<SamlIdpConfigCloudidentityV1beta1>? idpConfig;
  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  final pulumi.Input<Map<String, dynamic>>? spConfig;

  /// Creates a new [InboundSamlSsoProfileCloudidentityV1beta1Args].
  /// [customer] Immutable. The customer. For example: `customers/C0123abc`.
  /// [displayName] Human-readable name of the SAML SSO profile.
  /// [idpConfig] SAML identity provider configuration.
  /// [spConfig] SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  InboundSamlSsoProfileCloudidentityV1beta1Args({
    this.customer,
    this.displayName,
    this.idpConfig,
    this.spConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'displayName': ?displayName,
      'idpConfig': ?pulumi.Input.mapOptionalInputValue<SamlIdpConfigCloudidentityV1beta1, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
      'spConfig': ?spConfig,
    };
  }

  factory InboundSamlSsoProfileCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return InboundSamlSsoProfileCloudidentityV1beta1Args(
      customer: map['customer'] == null ? null : (map['customer']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      idpConfig: map['idpConfig'] == null ? null : (SamlIdpConfigCloudidentityV1beta1.fromMap((map['idpConfig']! as Map).cast<String, dynamic>())).input(),
      spConfig: map['spConfig'] == null ? null : ((map['spConfig']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

