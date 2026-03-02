// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerIpamPool resources.
class NetworkManagerIpamPoolState {
  /// Specifies a list of IPv4 or IPv6 IP address prefixes. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// The description of the Network Manager IPAM Pool.
  final pulumi.Input<String>? description;
  /// The display name for the Network Manager IPAM Pool.
  final pulumi.Input<String>? displayName;
  /// The Azure Region where the Network Manager IPAM Pool should exist. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Network Manager IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<String>? name;
  /// The ID of the parent Network Manager. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<String>? networkManagerId;
  /// The name of the parent IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<String>? parentPoolName;
  /// A mapping of tags which should be assigned to the Network Manager IPAM Pool.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkManagerIpamPoolState].
  /// [addressPrefixes] Specifies a list of IPv4 or IPv6 IP address prefixes. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [description] The description of the Network Manager IPAM Pool.
  /// [displayName] The display name for the Network Manager IPAM Pool.
  /// [location] The Azure Region where the Network Manager IPAM Pool should exist. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [name] The name which should be used for this Network Manager IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [networkManagerId] The ID of the parent Network Manager. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [parentPoolName] The name of the parent IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [tags] A mapping of tags which should be assigned to the Network Manager IPAM Pool.
  NetworkManagerIpamPoolState({
    this.addressPrefixes,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.networkManagerId,
    this.parentPoolName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
      'parentPoolName': ?parentPoolName,
      'tags': ?tags,
    };
  }

  factory NetworkManagerIpamPoolState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerIpamPoolState(
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkManagerId: map['networkManagerId'] == null ? null : (map['networkManagerId'] as String).input(),
      parentPoolName: map['parentPoolName'] == null ? null : (map['parentPoolName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

