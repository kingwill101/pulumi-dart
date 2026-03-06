// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_ipam_pool_network_manager_ipam_pool_args_doc}
/// The set of arguments for NetworkManagerIpamPool.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_ipam_pool_network_manager_ipam_pool_args_doc}
class NetworkManagerIpamPoolArgs {
  /// Specifies a list of IPv4 or IPv6 IP address prefixes. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<List<String>> addressPrefixes;
  /// The description of the Network Manager IPAM Pool.
  final pulumi.Input<String>? description;
  /// The display name for the Network Manager IPAM Pool.
  final pulumi.Input<String>? displayName;
  /// The Azure Region where the Network Manager IPAM Pool should exist. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Network Manager IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<String>? name;
  /// The ID of the parent Network Manager. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<String> networkManagerId;
  /// The name of the parent IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  final pulumi.Input<String>? parentPoolName;
  /// A mapping of tags which should be assigned to the Network Manager IPAM Pool.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkManagerIpamPoolArgs].
  /// [addressPrefixes] Specifies a list of IPv4 or IPv6 IP address prefixes. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [description] The description of the Network Manager IPAM Pool.
  /// [displayName] The display name for the Network Manager IPAM Pool.
  /// [location] The Azure Region where the Network Manager IPAM Pool should exist. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [name] The name which should be used for this Network Manager IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [networkManagerId] The ID of the parent Network Manager. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [parentPoolName] The name of the parent IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  /// [tags] A mapping of tags which should be assigned to the Network Manager IPAM Pool.
  const NetworkManagerIpamPoolArgs({
    required this.addressPrefixes,
    this.description,
    this.displayName,
    this.location,
    this.name,
    required this.networkManagerId,
    this.parentPoolName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'networkManagerId': networkManagerId,
      'parentPoolName': ?parentPoolName,
      'tags': ?tags,
    };
  }

  factory NetworkManagerIpamPoolArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerIpamPoolArgs(
      addressPrefixes: pulumi.Input.fromValue((map['addressPrefixes'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerId: pulumi.Input.fromValue(map['networkManagerId'] as String),
      parentPoolName: (() { final guardedValue = map['parentPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

