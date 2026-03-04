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
      'client':
          ?pulumi.Input.mapOptionalInputValue<
            TenantClient,
            Map<String, dynamic>
          >(client, (value) => value.toMap()),
      'disableAuth': ?disableAuth,
      'displayName': displayName,
      'enableEmailLinkSignin': ?enableEmailLinkSignin,
      'project': ?project,
    };
  }

  factory TenantArgs.fromMap(Map<String, dynamic> map) {
    return TenantArgs(
      allowPasswordSignup: (() {
        final guardedValue = map['allowPasswordSignup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      client: (() {
        final guardedValue = map['client'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TenantClient.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      disableAuth: (() {
        final guardedValue = map['disableAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableEmailLinkSignin: (() {
        final guardedValue = map['enableEmailLinkSignin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
