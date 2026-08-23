// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saml_idp_config.dart';

/// {@template pulumi_cloudidentity_v1_inbound_saml_sso_profile_args_doc}
/// The set of arguments for InboundSamlSsoProfile.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_inbound_saml_sso_profile_args_doc}
class InboundSamlSsoProfileArgs {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final pulumi.Input<String>? customer;
  /// Human-readable name of the SAML SSO profile.
  final pulumi.Input<String>? displayName;
  /// SAML identity provider configuration.
  final pulumi.Input<SamlIdpConfig>? idpConfig;
  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  final pulumi.Input<Map<String, dynamic>>? spConfig;

  /// Creates a new [InboundSamlSsoProfileArgs].
  /// [customer] Immutable. The customer. For example: `customers/C0123abc`.
  /// [displayName] Human-readable name of the SAML SSO profile.
  /// [idpConfig] SAML identity provider configuration.
  /// [spConfig] SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  const InboundSamlSsoProfileArgs({
    this.customer,
    this.displayName,
    this.idpConfig,
    this.spConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'displayName': ?displayName,
      'idpConfig': ?pulumi.Input.mapOptionalInputValue<SamlIdpConfig, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
      'spConfig': ?spConfig,
    };
  }

  factory InboundSamlSsoProfileArgs.fromMap(Map<String, dynamic> map) {
    return InboundSamlSsoProfileArgs(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idpConfig: (() { final guardedValue = map['idpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SamlIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spConfig: (() { final guardedValue = map['spConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
