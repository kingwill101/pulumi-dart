// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_apple_sign_in_config.dart';

/// {@template pulumi_identitytoolkit_v2_default_supported_idp_config_args_doc}
/// The set of arguments for DefaultSupportedIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_default_supported_idp_config_args_doc}
class DefaultSupportedIdpConfigArgs {
  /// Additional config for Apple-based projects.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig>? appleSignInConfig;
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
      'appleSignInConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig, Map<String, dynamic>>(appleSignInConfig, (value) => value.toMap()),
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
      appleSignInConfig: map['appleSignInConfig'] == null ? null : (GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromMap((map['appleSignInConfig'] as Map).cast<String, dynamic>())).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      idpId: map['idpId'] == null ? null : (map['idpId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

