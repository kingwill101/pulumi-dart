// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_oidc_sso_profile_idp_config.dart';
import 'inbound_oidc_sso_profile_rp_config.dart';

/// {@template pulumi_cloudidentity_inbound_oidc_sso_profile_inbound_oidc_sso_profile_args_doc}
/// The set of arguments for InboundOidcSsoProfile.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_inbound_oidc_sso_profile_inbound_oidc_sso_profile_args_doc}
class InboundOidcSsoProfileArgs {
  /// The customer. For example: `customers/C0123abc`. If omitted, the customer of the caller is used.
  final pulumi.Input<String?>? customer;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-readable name of the OIDC SSO profile.
  final pulumi.Input<String?>? displayName;
  /// OIDC identity provider configuration.
  /// Structure is documented below.
  final pulumi.Input<InboundOidcSsoProfileIdpConfig> idpConfig;
  /// OIDC relying party (RP) configuration for this OIDC SSO profile. These are the RP details
  /// provided by Google that should be configured on the corresponding identity provider.
  /// Structure is documented below.
  final pulumi.Input<InboundOidcSsoProfileRpConfig?>? rpConfig;

  /// Creates a new [InboundOidcSsoProfileArgs].
  /// [customer] The customer. For example: `customers/C0123abc`. If omitted, the customer of the caller is used.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name of the OIDC SSO profile.
  /// [idpConfig] OIDC identity provider configuration.
  /// [rpConfig] OIDC relying party (RP) configuration for this OIDC SSO profile. These are the RP details
  const InboundOidcSsoProfileArgs({
    this.customer,
    this.deletionPolicy,
    this.displayName,
    required this.idpConfig,
    this.rpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'idpConfig': pulumi.Input.mapInputValue<InboundOidcSsoProfileIdpConfig, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
      'rpConfig': ?pulumi.Input.mapOptionalInputValue<InboundOidcSsoProfileRpConfig, Map<String, dynamic>>(rpConfig, (value) => value.toMap()),
    };
  }

  factory InboundOidcSsoProfileArgs.fromMap(Map<String, dynamic> map) {
    return InboundOidcSsoProfileArgs(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idpConfig: pulumi.Input.fromValue(InboundOidcSsoProfileIdpConfig.fromMap((map['idpConfig']! as Map).cast<String, dynamic>())),
      rpConfig: (() { final guardedValue = map['rpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InboundOidcSsoProfileRpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
