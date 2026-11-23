// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_sso_profile_idp_config.dart';
import 'inbound_saml_sso_profile_sp_config.dart';

/// Input properties used for looking up and filtering InboundSamlSsoProfile resources.
class InboundSamlSsoProfileState {
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
  final pulumi.Input<InboundSamlSsoProfileIdpConfig?>? idpConfig;
  /// The server-assigned ID of the SAML SSO profile (the last segment of
  /// `name`).
  final pulumi.Input<String?>? inboundSamlSsoProfileId;
  /// Resource name of the SAML SSO profile, assigned by the server.
  /// Format: `inboundSamlSsoProfiles/{inbound_saml_sso_profile_id}`.
  final pulumi.Input<String?>? name;
  /// SAML service provider configuration for this SAML SSO profile. These are the service
  /// provider details provided by Google that should be configured on the corresponding
  /// identity provider.
  /// Structure is documented below.
  final pulumi.Input<List<InboundSamlSsoProfileSpConfig>?>? spConfigs;

  /// Creates a new [InboundSamlSsoProfileState].
  /// [customer] The customer. For example: `customers/C0123abc`. If omitted, the customer of the caller is used.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name of the SAML SSO profile.
  /// [idpConfig] SAML identity provider configuration.
  /// [inboundSamlSsoProfileId] The server-assigned ID of the SAML SSO profile (the last segment of
  /// [name] Resource name of the SAML SSO profile, assigned by the server.
  /// [spConfigs] SAML service provider configuration for this SAML SSO profile. These are the service
  const InboundSamlSsoProfileState({
    this.customer,
    this.deletionPolicy,
    this.displayName,
    this.idpConfig,
    this.inboundSamlSsoProfileId,
    this.name,
    this.spConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'idpConfig': ?pulumi.Input.mapOptionalInputValue<InboundSamlSsoProfileIdpConfig, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
      'inboundSamlSsoProfileId': ?inboundSamlSsoProfileId,
      'name': ?name,
      'spConfigs': ?pulumi.Input.mapOptionalInputValue<List<InboundSamlSsoProfileSpConfig>, List<Map<String, dynamic>>>(spConfigs, (value) => pulumi.Input.encodeList<InboundSamlSsoProfileSpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InboundSamlSsoProfileState.fromMap(Map<String, dynamic> map) {
    return InboundSamlSsoProfileState(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idpConfig: (() { final guardedValue = map['idpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InboundSamlSsoProfileIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inboundSamlSsoProfileId: (() { final guardedValue = map['inboundSamlSsoProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spConfigs: (() { final guardedValue = map['spConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InboundSamlSsoProfileSpConfig>(guardedValue, (value) => InboundSamlSsoProfileSpConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
