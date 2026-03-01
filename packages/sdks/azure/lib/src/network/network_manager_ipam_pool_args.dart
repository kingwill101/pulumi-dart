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
  NetworkManagerIpamPoolArgs({
    required pulumi.Output<List<String>> addressPrefixes,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkManagerId,
    pulumi.Output<String>? parentPoolName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      addressPrefixes = pulumi.Input.asInput<List<String>>(addressPrefixes),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asInput<String>(networkManagerId),
      parentPoolName = pulumi.Input.asOptionalInput<String>(parentPoolName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      addressPrefixes: pulumi.Output.create<List<String>>((map['addressPrefixes'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: pulumi.Output.create<String>(map['networkManagerId'] as String),
      parentPoolName: map['parentPoolName'] == null ? null : pulumi.Output.create<String>(map['parentPoolName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

