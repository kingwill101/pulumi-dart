// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// {@template pulumi_storagesync_storage_sync_service_args_doc}
/// The set of arguments for StorageSyncService.
/// {@endtemplate}
/// {@macro pulumi_storagesync_storage_sync_service_args_doc}
class StorageSyncServiceArgs {
  /// managed identities for the Storage Sync to interact with other Azure services without maintaining any secrets or credentials in code.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// Incoming Traffic Policy
  final pulumi.Input<dynamic>? incomingTrafficPolicy;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String?>? storageSyncServiceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Use Identity authorization when customer have finished setup RBAC permissions.
  final pulumi.Input<bool?>? useIdentity;

  /// Creates a new [StorageSyncServiceArgs].
  /// [identity] managed identities for the Storage Sync to interact with other Azure services without maintaining any secrets or credentials in code.
  /// [incomingTrafficPolicy] Incoming Traffic Policy
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  /// [tags] Resource tags.
  /// [useIdentity] Use Identity authorization when customer have finished setup RBAC permissions.
  const StorageSyncServiceArgs({
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
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incomingTrafficPolicy: (() { final guardedValue = map['incomingTrafficPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageSyncServiceName: (() { final guardedValue = map['storageSyncServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      useIdentity: (() { final guardedValue = map['useIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
