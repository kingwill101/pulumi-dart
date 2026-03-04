// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_idp_config_response_type.dart';

/// Input properties used for looking up and filtering OauthIdpConfig resources.
class OauthIdpConfigState {
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

  /// The response type to request for in the OAuth authorization flow.
  /// You can set either idToken or code to true, but not both.
  /// Setting both types to be simultaneously true ({code: true, idToken: true}) is not yet supported.
  /// Structure is documented below.
  final pulumi.Input<OauthIdpConfigResponseType>? responseType;

  /// Creates a new [OauthIdpConfigState].
  /// [clientId] The client id of an OAuth client.
  /// [clientSecret] The client secret of the OAuth client, to enable OIDC code flow.
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [issuer] For OIDC Idps, the issuer identifier.
  /// [name] The name of the OauthIdpConfig. Must start with `oidc.`.
  /// [project] The ID of the project in which the resource belongs.
  /// [responseType] The response type to request for in the OAuth authorization flow.
  OauthIdpConfigState({
    this.clientId,
    this.clientSecret,
    this.displayName,
    this.enabled,
    this.issuer,
    this.name,
    this.project,
    this.responseType,
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
      'responseType':
          ?pulumi.Input.mapOptionalInputValue<
            OauthIdpConfigResponseType,
            Map<String, dynamic>
          >(responseType, (value) => value.toMap()),
    };
  }

  factory OauthIdpConfigState.fromMap(Map<String, dynamic> map) {
    return OauthIdpConfigState(
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
      responseType: (() {
        final guardedValue = map['responseType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OauthIdpConfigResponseType.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
