// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultSupportedIdpConfig resources.
class DefaultSupportedIdpConfigState {
  /// OAuth client ID
  final pulumi.Input<String>? clientId;
  /// OAuth client secret
  final pulumi.Input<String>? clientSecret;
  /// If this IDP allows the user to sign in
  final pulumi.Input<bool>? enabled;
  /// ID of the IDP. Possible values include:
  /// * `apple.com`
  /// * `facebook.com`
  /// * `gc.apple.com`
  /// * `github.com`
  /// * `google.com`
  /// * `linkedin.com`
  /// * `microsoft.com`
  /// * `playgames.google.com`
  /// * `twitter.com`
  /// * `yahoo.com`
  final pulumi.Input<String>? idpId;
  /// The name of the DefaultSupportedIdpConfig resource
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DefaultSupportedIdpConfigState].
  /// [clientId] OAuth client ID
  /// [clientSecret] OAuth client secret
  /// [enabled] If this IDP allows the user to sign in
  /// [idpId] ID of the IDP. Possible values include:
  /// [name] The name of the DefaultSupportedIdpConfig resource
  /// [project] The ID of the project in which the resource belongs.
  DefaultSupportedIdpConfigState({
    this.clientId,
    this.clientSecret,
    this.enabled,
    this.idpId,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'enabled': ?enabled,
      'idpId': ?idpId,
      'name': ?name,
      'project': ?project,
    };
  }

  factory DefaultSupportedIdpConfigState.fromMap(Map<String, dynamic> map) {
    return DefaultSupportedIdpConfigState(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      idpId: map['idpId'] == null ? null : (map['idpId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

