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
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? incomingTrafficPolicy,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? storageSyncServiceName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? useIdentity,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      incomingTrafficPolicy = pulumi.Input.asOptionalInput<String>(incomingTrafficPolicy),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageSyncServiceName = pulumi.Input.asOptionalInput<String>(storageSyncServiceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      useIdentity = pulumi.Input.asOptionalInput<bool>(useIdentity);

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
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      incomingTrafficPolicy: map['incomingTrafficPolicy'] == null ? null : pulumi.Output.create<String>(map['incomingTrafficPolicy'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageSyncServiceName: map['storageSyncServiceName'] == null ? null : pulumi.Output.create<String>(map['storageSyncServiceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      useIdentity: map['useIdentity'] == null ? null : pulumi.Output.create<bool>(map['useIdentity'] as bool),
    );
  }
}

