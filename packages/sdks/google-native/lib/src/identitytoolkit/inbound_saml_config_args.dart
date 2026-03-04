// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_idp_config.dart';
import 'google_cloud_identitytoolkit_admin_v2_sp_config.dart';

/// {@template pulumi_identitytoolkit_v2_inbound_saml_config_args_doc}
/// The set of arguments for InboundSamlConfig.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_inbound_saml_config_args_doc}
class InboundSamlConfigArgs {
  /// The config's display name set by developers.
  final pulumi.Input<String>? displayName;

  /// True if allows the user to sign in with the provider.
  final pulumi.Input<bool>? enabled;

  /// The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2IdpConfig>? idpConfig;

  /// The id to use for this config.
  final pulumi.Input<String>? inboundSamlConfigId;

  /// The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2SpConfig>? spConfig;
  final pulumi.Input<String> tenantId;

  /// Creates a new [InboundSamlConfigArgs].
  /// [displayName] The config's display name set by developers.
  /// [enabled] True if allows the user to sign in with the provider.
  /// [idpConfig] The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
  /// [inboundSamlConfigId] The id to use for this config.
  /// [name] The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
  /// [project] Optional.
  /// [spConfig] The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.
  /// [tenantId] Required.
  InboundSamlConfigArgs({
    this.displayName,
    this.enabled,
    this.idpConfig,
    this.inboundSamlConfigId,
    this.name,
    this.project,
    this.spConfig,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'enabled': ?enabled,
      'idpConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIdentitytoolkitAdminV2IdpConfig,
            Map<String, dynamic>
          >(idpConfig, (value) => value.toMap()),
      'inboundSamlConfigId': ?inboundSamlConfigId,
      'name': ?name,
      'project': ?project,
      'spConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIdentitytoolkitAdminV2SpConfig,
            Map<String, dynamic>
          >(spConfig, (value) => value.toMap()),
      'tenantId': tenantId,
    };
  }

  factory InboundSamlConfigArgs.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigArgs(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      idpConfig: (() {
        final guardedValue = map['idpConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inboundSamlConfigId: (() {
        final guardedValue = map['inboundSamlConfigId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spConfig: (() {
        final guardedValue = map['spConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIdentitytoolkitAdminV2SpConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
