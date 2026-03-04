// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redhatopenshift_sync_identity_provider_args_doc}
/// The set of arguments for SyncIdentityProvider.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_sync_identity_provider_args_doc}
class SyncIdentityProviderArgs {
  /// The name of the SyncIdentityProvider resource.
  final pulumi.Input<String>? childResourceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String> resourceName;
  final pulumi.Input<String>? resources;

  /// Creates a new [SyncIdentityProviderArgs].
  /// [childResourceName] The name of the SyncIdentityProvider resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  /// [resources] Optional.
  SyncIdentityProviderArgs({
    this.childResourceName,
    required this.resourceGroupName,
    required this.resourceName,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childResourceName': ?childResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resources': ?resources,
    };
  }

  factory SyncIdentityProviderArgs.fromMap(Map<String, dynamic> map) {
    return SyncIdentityProviderArgs(
      childResourceName: (() {
        final guardedValue = map['childResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
