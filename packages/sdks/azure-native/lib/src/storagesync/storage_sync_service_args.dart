// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// {@template pulumi_storagesync_storage_sync_service_args_doc}
/// The set of arguments for StorageSyncService.
/// {@endtemplate}
/// {@macro pulumi_storagesync_storage_sync_service_args_doc}
class StorageSyncServiceArgs {
  /// managed identities for the Storage Sync to interact with other Azure services without maintaining any secrets or credentials in code.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Incoming Traffic Policy
  final pulumi.Input<String>? incomingTrafficPolicy;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String>? storageSyncServiceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Use Identity authorization when customer have finished setup RBAC permissions.
  final pulumi.Input<bool>? useIdentity;

  /// Creates a new [StorageSyncServiceArgs].
  /// [identity] managed identities for the Storage Sync to interact with other Azure services without maintaining any secrets or credentials in code.
  /// [incomingTrafficPolicy] Incoming Traffic Policy
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  /// [tags] Resource tags.
  /// [useIdentity] Use Identity authorization when customer have finished setup RBAC permissions.
  StorageSyncServiceArgs({
    this.identity,
    this.incomingTrafficPolicy,
    this.location,
    required this.resourceGroupName,
    this.storageSyncServiceName,
    this.tags,
    this.useIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'incomingTrafficPolicy': ?incomingTrafficPolicy,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageSyncServiceName': ?storageSyncServiceName,
      'tags': ?tags,
      'useIdentity': ?useIdentity,
    };
  }

  factory StorageSyncServiceArgs.fromMap(Map<String, dynamic> map) {
    return StorageSyncServiceArgs(
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      incomingTrafficPolicy: map['incomingTrafficPolicy'] == null ? null : (map['incomingTrafficPolicy']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageSyncServiceName: map['storageSyncServiceName'] == null ? null : (map['storageSyncServiceName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      useIdentity: map['useIdentity'] == null ? null : (map['useIdentity']! as bool).input(),
    );
  }
}

