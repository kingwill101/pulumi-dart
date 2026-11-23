// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_oidc_sso_profile_idp_config.dart';
import 'inbound_oidc_sso_profile_rp_config.dart';

/// Input properties used for looking up and filtering InboundOidcSsoProfile resources.
class InboundOidcSsoProfileState {
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
  final pulumi.Input<InboundOidcSsoProfileIdpConfig?>? idpConfig;
  /// The server-assigned ID of the OIDC SSO profile (the last segment of `name`).
  final pulumi.Input<String?>? inboundOidcSsoProfileId;
  /// Resource name of the OIDC SSO profile, in the format `inboundOidcSsoProfiles/{inbound_oidc_sso_profile_id}`.
  final pulumi.Input<String?>? name;
  /// OIDC relying party (RP) configuration for this OIDC SSO profile. These are the RP details
  /// provided by Google that should be configured on the corresponding identity provider.
  /// Structure is documented below.
  final pulumi.Input<InboundOidcSsoProfileRpConfig?>? rpConfig;

  /// Creates a new [InboundOidcSsoProfileState].
  /// [customer] The customer. For example: `customers/C0123abc`. If omitted, the customer of the caller is used.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name of the OIDC SSO profile.
  /// [idpConfig] OIDC identity provider configuration.
  /// [inboundOidcSsoProfileId] The server-assigned ID of the OIDC SSO profile (the last segment of `name`).
  /// [name] Resource name of the OIDC SSO profile, in the format `inboundOidcSsoProfiles/{inbound_oidc_sso_profile_id}`.
  /// [rpConfig] OIDC relying party (RP) configuration for this OIDC SSO profile. These are the RP details
  const InboundOidcSsoProfileState({
    this.customer,
    this.deletionPolicy,
    this.displayName,
    this.idpConfig,
    this.inboundOidcSsoProfileId,
    this.name,
    this.rpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'idpConfig': ?pulumi.Input.mapOptionalInputValue<InboundOidcSsoProfileIdpConfig, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
      'inboundOidcSsoProfileId': ?inboundOidcSsoProfileId,
      'name': ?name,
      'rpConfig': ?pulumi.Input.mapOptionalInputValue<InboundOidcSsoProfileRpConfig, Map<String, dynamic>>(rpConfig, (value) => value.toMap()),
    };
  }

  factory InboundOidcSsoProfileState.fromMap(Map<String, dynamic> map) {
    return InboundOidcSsoProfileState(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idpConfig: (() { final guardedValue = map['idpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InboundOidcSsoProfileIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inboundOidcSsoProfileId: (() { final guardedValue = map['inboundOidcSsoProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rpConfig: (() { final guardedValue = map['rpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InboundOidcSsoProfileRpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
