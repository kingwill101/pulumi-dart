// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_sso_profile_idp_config.dart';

/// {@template pulumi_cloudidentity_inbound_saml_sso_profile_inbound_saml_sso_profile_args_doc}
/// The set of arguments for InboundSamlSsoProfile.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_inbound_saml_sso_profile_inbound_saml_sso_profile_args_doc}
class InboundSamlSsoProfileArgs {
  /// The customer. For example: `customers/C0123abc`. If omitted, the customer of the caller is used.
  final pulumi.Input<String?>? customer;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-readable name of the SAML SSO profile.
  final pulumi.Input<String?>? displayName;
  /// SAML identity provider configuration.
  /// Structure is documented below.
  final pulumi.Input<InboundSamlSsoProfileIdpConfig> idpConfig;

  /// Creates a new [InboundSamlSsoProfileArgs].
  /// [customer] The customer. For example: `customers/C0123abc`. If omitted, the customer of the caller is used.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name of the SAML SSO profile.
  /// [idpConfig] SAML identity provider configuration.
  const InboundSamlSsoProfileArgs({
    this.customer,
    this.deletionPolicy,
    this.displayName,
    required this.idpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'idpConfig': pulumi.Input.mapInputValue<InboundSamlSsoProfileIdpConfig, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
    };
  }

  factory InboundSamlSsoProfileArgs.fromMap(Map<String, dynamic> map) {
    return InboundSamlSsoProfileArgs(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idpConfig: pulumi.Input.fromValue(InboundSamlSsoProfileIdpConfig.fromMap((map['idpConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
