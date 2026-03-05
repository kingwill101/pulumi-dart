// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redhatopenshift_get_sync_identity_provider_args_doc}
/// Arguments for getSyncIdentityProvider.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_get_sync_identity_provider_args_doc}
class GetSyncIdentityProviderArgs {
  /// The name of the SyncIdentityProvider resource.
  final pulumi.Input<String> childResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetSyncIdentityProviderArgs].
  /// [childResourceName] The name of the SyncIdentityProvider resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  GetSyncIdentityProviderArgs({
    required this.childResourceName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childResourceName': childResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetSyncIdentityProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetSyncIdentityProviderArgs(
      childResourceName: pulumi.Input.fromValue(map['childResourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

