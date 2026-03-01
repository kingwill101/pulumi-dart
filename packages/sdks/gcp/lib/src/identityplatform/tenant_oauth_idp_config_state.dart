// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TenantOauthIdpConfig resources.
class TenantOauthIdpConfigState {
  /// The client id of an OAuth client.
  final pulumi.Input<String>? clientId;
  /// The client secret of the OAuth client, to enable OIDC code flow.
  final pulumi.Input<String>? clientSecret;
  /// Human friendly display name.
  final pulumi.Input<String>? displayName;
  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool>? enabled;
  /// For OIDC Idps, the issuer identifier.
  final pulumi.Input<String>? issuer;
  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the tenant where this OIDC IDP configuration resource exists
  final pulumi.Input<String>? tenant;

  /// Creates a new [TenantOauthIdpConfigState].
  /// [clientId] The client id of an OAuth client.
  /// [clientSecret] The client secret of the OAuth client, to enable OIDC code flow.
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [issuer] For OIDC Idps, the issuer identifier.
  /// [name] The name of the OauthIdpConfig. Must start with `oidc.`.
  /// [project] The ID of the project in which the resource belongs.
  /// [tenant] The name of the tenant where this OIDC IDP configuration resource exists
  TenantOauthIdpConfigState({
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? issuer,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? tenant,
  }) :
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      issuer = pulumi.Input.asOptionalInput<String>(issuer),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      tenant = pulumi.Input.asOptionalInput<String>(tenant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'issuer': ?issuer,
      'name': ?name,
      'project': ?project,
      'tenant': ?tenant,
    };
  }

  factory TenantOauthIdpConfigState.fromMap(Map<String, dynamic> map) {
    return TenantOauthIdpConfigState(
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      issuer: map['issuer'] == null ? null : pulumi.Output.create<String>(map['issuer'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
    );
  }
}

