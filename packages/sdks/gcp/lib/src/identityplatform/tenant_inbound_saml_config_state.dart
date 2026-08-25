// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_inbound_saml_config_idp_config.dart';
import 'tenant_inbound_saml_config_sp_config.dart';

/// Input properties used for looking up and filtering TenantInboundSamlConfig resources.
class TenantInboundSamlConfigState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human friendly display name.
  final pulumi.Input<String?>? displayName;
  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool?>? enabled;
  /// SAML IdP configuration when the project acts as the relying party
  /// Structure is documented below.
  final pulumi.Input<TenantInboundSamlConfigIdpConfig?>? idpConfig;
  /// The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// hyphens, underscores or periods. The part after 'saml.' must also start with a lowercase letter, end with an
  /// alphanumeric character, and have at least 2 characters.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  /// and accept an authentication assertion issued by a SAML identity provider.
  /// Structure is documented below.
  final pulumi.Input<TenantInboundSamlConfigSpConfig?>? spConfig;
  /// The name of the tenant where this inbound SAML config resource exists
  final pulumi.Input<String?>? tenant;

  /// Creates a new [TenantInboundSamlConfigState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [idpConfig] SAML IdP configuration when the project acts as the relying party
  /// [name] The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// [project] The ID of the project in which the resource belongs.
  /// [spConfig] SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  /// [tenant] The name of the tenant where this inbound SAML config resource exists
  const TenantInboundSamlConfigState({
    this.deletionPolicy,
    this.displayName,
    this.enabled,
    this.idpConfig,
    this.name,
    this.project,
    this.spConfig,
    this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'idpConfig': ?pulumi.Input.mapOptionalInputValue<TenantInboundSamlConfigIdpConfig, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'spConfig': ?pulumi.Input.mapOptionalInputValue<TenantInboundSamlConfigSpConfig, Map<String, dynamic>>(spConfig, (value) => value.toMap()),
      'tenant': ?tenant,
    };
  }

  factory TenantInboundSamlConfigState.fromMap(Map<String, dynamic> map) {
    return TenantInboundSamlConfigState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idpConfig: (() { final guardedValue = map['idpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TenantInboundSamlConfigIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spConfig: (() { final guardedValue = map['spConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TenantInboundSamlConfigSpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
