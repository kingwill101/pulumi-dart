// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identityplatform_tenant_oauth_idp_config_tenant_oauth_idp_config_args_doc}
/// The set of arguments for TenantOauthIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_tenant_oauth_idp_config_tenant_oauth_idp_config_args_doc}
class TenantOauthIdpConfigArgs {
  /// The client id of an OAuth client.
  final pulumi.Input<String> clientId;
  /// The client secret of the OAuth client, to enable OIDC code flow.
  final pulumi.Input<String>? clientSecret;
  /// Human friendly display name.
  final pulumi.Input<String> displayName;
  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool>? enabled;
  /// For OIDC Idps, the issuer identifier.
  final pulumi.Input<String> issuer;
  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the tenant where this OIDC IDP configuration resource exists
  final pulumi.Input<String> tenant;

  /// Creates a new [TenantOauthIdpConfigArgs].
  /// [clientId] The client id of an OAuth client.
  /// [clientSecret] The client secret of the OAuth client, to enable OIDC code flow.
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [issuer] For OIDC Idps, the issuer identifier.
  /// [name] The name of the OauthIdpConfig. Must start with `oidc.`.
  /// [project] The ID of the project in which the resource belongs.
  /// [tenant] The name of the tenant where this OIDC IDP configuration resource exists
  TenantOauthIdpConfigArgs({
    required this.clientId,
    this.clientSecret,
    required this.displayName,
    this.enabled,
    required this.issuer,
    this.name,
    this.project,
    required this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'displayName': displayName,
      'enabled': ?enabled,
      'issuer': issuer,
      'name': ?name,
      'project': ?project,
      'tenant': tenant,
    };
  }

  factory TenantOauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return TenantOauthIdpConfigArgs(
      clientId: (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      issuer: (map['issuer'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      tenant: (map['tenant'] as String).input(),
    );
  }
}

