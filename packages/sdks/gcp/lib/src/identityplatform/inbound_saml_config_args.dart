// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_config_idp_config.dart';
import 'inbound_saml_config_sp_config.dart';

/// {@template pulumi_identityplatform_inbound_saml_config_inbound_saml_config_args_doc}
/// The set of arguments for InboundSamlConfig.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_inbound_saml_config_inbound_saml_config_args_doc}
class InboundSamlConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Human friendly display name.
  final pulumi.Input<String> displayName;
  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool>? enabled;
  /// SAML IdP configuration when the project acts as the relying party
  /// Structure is documented below.
  final pulumi.Input<InboundSamlConfigIdpConfig> idpConfig;
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
  final pulumi.Input<InboundSamlConfigSpConfig> spConfig;

  /// Creates a new [InboundSamlConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [idpConfig] SAML IdP configuration when the project acts as the relying party
  /// [name] The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// [project] The ID of the project in which the resource belongs.
  /// [spConfig] SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  const InboundSamlConfigArgs({
    this.deletionPolicy,
    required this.displayName,
    this.enabled,
    required this.idpConfig,
    this.name,
    this.project,
    required this.spConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'enabled': ?enabled,
      'idpConfig': pulumi.Input.mapInputValue<InboundSamlConfigIdpConfig, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'spConfig': pulumi.Input.mapInputValue<InboundSamlConfigSpConfig, Map<String, dynamic>>(spConfig, (value) => value.toMap()),
    };
  }

  factory InboundSamlConfigArgs.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idpConfig: pulumi.Input.fromValue(InboundSamlConfigIdpConfig.fromMap((map['idpConfig']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spConfig: pulumi.Input.fromValue(InboundSamlConfigSpConfig.fromMap((map['spConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
