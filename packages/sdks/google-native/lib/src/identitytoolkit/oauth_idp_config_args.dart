// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_oauth_response_type.dart';

/// {@template pulumi_identitytoolkit_v2_oauth_idp_config_args_doc}
/// The set of arguments for OauthIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_oauth_idp_config_args_doc}
class OauthIdpConfigArgs {
  /// The client id of an OAuth client.
  final pulumi.Input<String>? clientId;
  /// The client secret of the OAuth client, to enable OIDC code flow.
  final pulumi.Input<String>? clientSecret;
  /// The config's display name set by developers.
  final pulumi.Input<String>? displayName;
  /// True if allows the user to sign in with the provider.
  final pulumi.Input<bool>? enabled;
  /// For OIDC Idps, the issuer identifier.
  final pulumi.Input<String>? issuer;
  /// The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
  final pulumi.Input<String>? name;
  /// The id to use for this config.
  final pulumi.Input<String>? oauthIdpConfigId;
  final pulumi.Input<String>? project;
  /// The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2OAuthResponseType>? responseType;
  final pulumi.Input<String> tenantId;

  /// Creates a new [OauthIdpConfigArgs].
  /// [clientId] The client id of an OAuth client.
  /// [clientSecret] The client secret of the OAuth client, to enable OIDC code flow.
  /// [displayName] The config's display name set by developers.
  /// [enabled] True if allows the user to sign in with the provider.
  /// [issuer] For OIDC Idps, the issuer identifier.
  /// [name] The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
  /// [oauthIdpConfigId] The id to use for this config.
  /// [project] Optional.
  /// [responseType] The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported.
  /// [tenantId] Required.
  OauthIdpConfigArgs({
    this.clientId,
    this.clientSecret,
    this.displayName,
    this.enabled,
    this.issuer,
    this.name,
    this.oauthIdpConfigId,
    this.project,
    this.responseType,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'issuer': ?issuer,
      'name': ?name,
      'oauthIdpConfigId': ?oauthIdpConfigId,
      'project': ?project,
      'responseType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2OAuthResponseType, Map<String, dynamic>>(responseType, (value) => value.toMap()),
      'tenantId': tenantId,
    };
  }

  factory OauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return OauthIdpConfigArgs(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      issuer: map['issuer'] == null ? null : (map['issuer'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      oauthIdpConfigId: map['oauthIdpConfigId'] == null ? null : (map['oauthIdpConfigId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      responseType: map['responseType'] == null ? null : (GoogleCloudIdentitytoolkitAdminV2OAuthResponseType.fromMap((map['responseType'] as Map).cast<String, dynamic>())).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

