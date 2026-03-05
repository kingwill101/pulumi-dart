// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_network_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_networking_get_network_get_network_args_doc}
class GetNetworkArgs {
  /// Human-readable description of the network.
  final pulumi.Input<String>? description;
  /// The external routing facility of the network.
  final pulumi.Input<bool>? external;
  /// The CIDR of a subnet within the network.
  final pulumi.Input<String>? matchingSubnetCidr;
  /// The network MTU to filter. Available, when Neutron `net-mtu`
  /// extension is enabled.
  final pulumi.Input<int>? mtu;
  /// The name of the network.
  final pulumi.Input<String>? name;
  /// The ID of the network.
  final pulumi.Input<String>? networkId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve networks ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The status of the network.
  final pulumi.Input<String>? status;
  /// The list of network tags to filter.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the network.
  final pulumi.Input<String>? tenantId;
  /// The VLAN transparent attribute for the
  /// network.
  final pulumi.Input<bool>? transparentVlan;

  /// Creates a new [GetNetworkArgs].
  /// [description] Human-readable description of the network.
  /// [external] The external routing facility of the network.
  /// [matchingSubnetCidr] The CIDR of a subnet within the network.
  /// [mtu] The network MTU to filter. Available, when Neutron `net-mtu`
  /// [name] The name of the network.
  /// [networkId] The ID of the network.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [status] The status of the network.
  /// [tags] The list of network tags to filter.
  /// [tenantId] The owner of the network.
  /// [transparentVlan] The VLAN transparent attribute for the
  GetNetworkArgs({
    this.description,
    this.external,
    this.matchingSubnetCidr,
    this.mtu,
    this.name,
    this.networkId,
    this.region,
    this.status,
    this.tags,
    this.tenantId,
    this.transparentVlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'external': ?external,
      'matchingSubnetCidr': ?matchingSubnetCidr,
      'mtu': ?mtu,
      'name': ?name,
      'networkId': ?networkId,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'transparentVlan': ?transparentVlan,
    };
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      external: (() { final guardedValue = map['external']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      matchingSubnetCidr: (() { final guardedValue = map['matchingSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentVlan: (() { final guardedValue = map['transparentVlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

