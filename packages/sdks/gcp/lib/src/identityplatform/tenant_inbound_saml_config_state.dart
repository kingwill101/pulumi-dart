// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_inbound_saml_config_idp_config.dart';
import 'tenant_inbound_saml_config_sp_config.dart';

/// Input properties used for looking up and filtering TenantInboundSamlConfig resources.
class TenantInboundSamlConfigState {
  /// Human friendly display name.
  final pulumi.Input<String>? displayName;
  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool>? enabled;
  /// SAML IdP configuration when the project acts as the relying party
  /// Structure is documented below.
  final pulumi.Input<TenantInboundSamlConfigIdpConfig>? idpConfig;
  /// The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// hyphens, underscores or periods. The part after 'saml.' must also start with a lowercase letter, end with an
  /// alphanumeric character, and have at least 2 characters.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  /// and accept an authentication assertion issued by a SAML identity provider.
  /// Structure is documented below.
  final pulumi.Input<TenantInboundSamlConfigSpConfig>? spConfig;
  /// The name of the tenant where this inbound SAML config resource exists
  final pulumi.Input<String>? tenant;

  /// Creates a new [TenantInboundSamlConfigState].
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [idpConfig] SAML IdP configuration when the project acts as the relying party
  /// [name] The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// [project] The ID of the project in which the resource belongs.
  /// [spConfig] SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  /// [tenant] The name of the tenant where this inbound SAML config resource exists
  TenantInboundSamlConfigState({
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<TenantInboundSamlConfigIdpConfig>? idpConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<TenantInboundSamlConfigSpConfig>? spConfig,
    pulumi.Output<String>? tenant,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      idpConfig = pulumi.Input.asOptionalInput<TenantInboundSamlConfigIdpConfig>(idpConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      spConfig = pulumi.Input.asOptionalInput<TenantInboundSamlConfigSpConfig>(spConfig),
      tenant = pulumi.Input.asOptionalInput<String>(tenant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      idpConfig: map['idpConfig'] == null ? null : pulumi.Output.create<TenantInboundSamlConfigIdpConfig>(TenantInboundSamlConfigIdpConfig.fromMap((map['idpConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      spConfig: map['spConfig'] == null ? null : pulumi.Output.create<TenantInboundSamlConfigSpConfig>(TenantInboundSamlConfigSpConfig.fromMap((map['spConfig'] as Map).cast<String, dynamic>())),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
    );
  }
}

