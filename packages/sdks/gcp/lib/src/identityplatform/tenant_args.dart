// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_client.dart';

/// {@template pulumi_identityplatform_tenant_tenant_args_doc}
/// The set of arguments for Tenant.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_tenant_tenant_args_doc}
class TenantArgs {
  /// Whether to allow email/password user authentication.
  final pulumi.Input<bool>? allowPasswordSignup;
  /// Options related to how clients making requests on behalf of a tenant should be configured.
  /// Structure is documented below.
  final pulumi.Input<TenantClient>? client;
  /// Whether authentication is disabled for the tenant. If true, the users under
  /// the disabled tenant are not allowed to sign-in. Admins of the disabled tenant
  /// are not able to manage its users.
  final pulumi.Input<bool>? disableAuth;
  /// Human friendly display name of the tenant.
  final pulumi.Input<String> displayName;
  /// Whether to enable email link user authentication.
  final pulumi.Input<bool>? enableEmailLinkSignin;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [TenantArgs].
  /// [allowPasswordSignup] Whether to allow email/password user authentication.
  /// [client] Options related to how clients making requests on behalf of a tenant should be configured.
  /// [disableAuth] Whether authentication is disabled for the tenant. If true, the users under
  /// [displayName] Human friendly display name of the tenant.
  /// [enableEmailLinkSignin] Whether to enable email link user authentication.
  /// [project] The ID of the project in which the resource belongs.
  TenantArgs({
    this.allowPasswordSignup,
    this.client,
    this.disableAuth,
    required this.displayName,
    this.enableEmailLinkSignin,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPasswordSignup': ?allowPasswordSignup,
      'client': ?pulumi.Input.mapOptionalInputValue<TenantClient, Map<String, dynamic>>(client, (value) => value.toMap()),
      'disableAuth': ?disableAuth,
      'displayName': displayName,
      'enableEmailLinkSignin': ?enableEmailLinkSignin,
      'project': ?project,
    };
  }

  factory TenantArgs.fromMap(Map<String, dynamic> map) {
    return TenantArgs(
      allowPasswordSignup: map['allowPasswordSignup'] == null ? null : (map['allowPasswordSignup'] as bool).input(),
      client: map['client'] == null ? null : (TenantClient.fromMap((map['client'] as Map).cast<String, dynamic>())).input(),
      disableAuth: map['disableAuth'] == null ? null : (map['disableAuth'] as bool).input(),
      displayName: (map['displayName'] as String).input(),
      enableEmailLinkSignin: map['enableEmailLinkSignin'] == null ? null : (map['enableEmailLinkSignin'] as bool).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

