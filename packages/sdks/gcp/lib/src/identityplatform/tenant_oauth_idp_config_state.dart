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
    this.clientId,
    this.clientSecret,
    this.displayName,
    this.enabled,
    this.issuer,
    this.name,
    this.project,
    this.tenant,
  });

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
      issuer: (() {
        final guardedValue = map['issuer'];
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
      tenant: (() {
        final guardedValue = map['tenant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
