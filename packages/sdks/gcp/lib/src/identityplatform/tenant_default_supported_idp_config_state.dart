// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TenantDefaultSupportedIdpConfig resources.
class TenantDefaultSupportedIdpConfigState {
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
  /// The name of the default supported IDP config resource
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the tenant where this DefaultSupportedIdpConfig resource exists
  final pulumi.Input<String>? tenant;

  /// Creates a new [TenantDefaultSupportedIdpConfigState].
  /// [clientId] OAuth client ID
  /// [clientSecret] OAuth client secret
  /// [enabled] If this IDP allows the user to sign in
  /// [idpId] ID of the IDP. Possible values include:
  /// [name] The name of the default supported IDP config resource
  /// [project] The ID of the project in which the resource belongs.
  /// [tenant] The name of the tenant where this DefaultSupportedIdpConfig resource exists
  TenantDefaultSupportedIdpConfigState({
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? idpId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? tenant,
  }) :
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      idpId = pulumi.Input.asOptionalInput<String>(idpId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      tenant = pulumi.Input.asOptionalInput<String>(tenant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'enabled': ?enabled,
      'idpId': ?idpId,
      'name': ?name,
      'project': ?project,
      'tenant': ?tenant,
    };
  }

  factory TenantDefaultSupportedIdpConfigState.fromMap(Map<String, dynamic> map) {
    return TenantDefaultSupportedIdpConfigState(
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      idpId: map['idpId'] == null ? null : pulumi.Output.create<String>(map['idpId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
    );
  }
}

