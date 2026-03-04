// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_apple_sign_in_config.dart';

/// {@template pulumi_identitytoolkit_v2_default_supported_idp_config_args_doc}
/// The set of arguments for DefaultSupportedIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_default_supported_idp_config_args_doc}
class DefaultSupportedIdpConfigArgs {
  /// Additional config for Apple-based projects.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig>?
  appleSignInConfig;

  /// OAuth client ID.
  final pulumi.Input<String>? clientId;

  /// OAuth client secret.
  final pulumi.Input<String>? clientSecret;

  /// True if allows the user to sign in with the provider.
  final pulumi.Input<bool>? enabled;

  /// The id of the Idp to create a config for. Call ListDefaultSupportedIdps for list of all default supported Idps.
  final pulumi.Input<String>? idpId;

  /// The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [DefaultSupportedIdpConfigArgs].
  /// [appleSignInConfig] Additional config for Apple-based projects.
  /// [clientId] OAuth client ID.
  /// [clientSecret] OAuth client secret.
  /// [enabled] True if allows the user to sign in with the provider.
  /// [idpId] The id of the Idp to create a config for. Call ListDefaultSupportedIdps for list of all default supported Idps.
  /// [name] The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// [project] Optional.
  /// [tenantId] Required.
  DefaultSupportedIdpConfigArgs({
    this.appleSignInConfig,
    this.clientId,
    this.clientSecret,
    this.enabled,
    this.idpId,
    this.name,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appleSignInConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig,
            Map<String, dynamic>
          >(appleSignInConfig, (value) => value.toMap()),
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'enabled': ?enabled,
      'idpId': ?idpId,
      'name': ?name,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory DefaultSupportedIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return DefaultSupportedIdpConfigArgs(
      appleSignInConfig: (() {
        final guardedValue = map['appleSignInConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      idpId: (() {
        final guardedValue = map['idpId'];
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
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
