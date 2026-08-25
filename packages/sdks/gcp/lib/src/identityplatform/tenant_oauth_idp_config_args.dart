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
  final pulumi.Input<String?>? clientSecret;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human friendly display name.
  final pulumi.Input<String> displayName;
  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool?>? enabled;
  /// For OIDC Idps, the issuer identifier.
  final pulumi.Input<String> issuer;
  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The name of the tenant where this OIDC IDP configuration resource exists
  final pulumi.Input<String> tenant;

  /// Creates a new [TenantOauthIdpConfigArgs].
  /// [clientId] The client id of an OAuth client.
  /// [clientSecret] The client secret of the OAuth client, to enable OIDC code flow.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [issuer] For OIDC Idps, the issuer identifier.
  /// [name] The name of the OauthIdpConfig. Must start with `oidc.`.
  /// [project] The ID of the project in which the resource belongs.
  /// [tenant] The name of the tenant where this OIDC IDP configuration resource exists
  const TenantOauthIdpConfigArgs({
    required this.clientId,
    this.clientSecret,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: pulumi.Input.fromValue(map['tenant'] as String),
    );
  }
}
