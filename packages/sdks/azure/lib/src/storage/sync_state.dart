// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Sync resources.
class SyncState {
  /// Incoming traffic policy. Possible values are `AllowAllTraffic` and `AllowVirtualNetworksOnly`. Defaults to `AllowAllTraffic`.
  final pulumi.Input<String>? incomingTrafficPolicy;
  /// The Azure Region where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Storage Sync. Changing this forces a new Storage Sync to be created.
  final pulumi.Input<String>? name;
  /// A list of registered servers owned by this Storage Sync.
  final pulumi.Input<List<String>>? registeredServers;
  /// The name of the Resource Group where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Storage Sync.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SyncState].
  /// [incomingTrafficPolicy] Incoming traffic policy. Possible values are `AllowAllTraffic` and `AllowVirtualNetworksOnly`. Defaults to `AllowAllTraffic`.
  /// [location] The Azure Region where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  /// [name] The name which should be used for this Storage Sync. Changing this forces a new Storage Sync to be created.
  /// [registeredServers] A list of registered servers owned by this Storage Sync.
  /// [resourceGroupName] The name of the Resource Group where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  /// [tags] A mapping of tags which should be assigned to the Storage Sync.
  SyncState({
    this.incomingTrafficPolicy,
    this.location,
    this.name,
    this.registeredServers,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incomingTrafficPolicy': ?incomingTrafficPolicy,
      'location': ?location,
      'name': ?name,
      'registeredServers': ?registeredServers,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SyncState.fromMap(Map<String, dynamic> map) {
    return SyncState(
      incomingTrafficPolicy: map['incomingTrafficPolicy'] == null ? null : (map['incomingTrafficPolicy']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      registeredServers: map['registeredServers'] == null ? null : ((map['registeredServers']! as List).cast<String>()).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

