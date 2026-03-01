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
    pulumi.Output<String>? incomingTrafficPolicy,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? registeredServers,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      incomingTrafficPolicy = pulumi.Input.asOptionalInput<String>(incomingTrafficPolicy),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      registeredServers = pulumi.Input.asOptionalInput<List<String>>(registeredServers),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      incomingTrafficPolicy: map['incomingTrafficPolicy'] == null ? null : pulumi.Output.create<String>(map['incomingTrafficPolicy'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      registeredServers: map['registeredServers'] == null ? null : pulumi.Output.create<List<String>>((map['registeredServers'] as List).cast<String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

