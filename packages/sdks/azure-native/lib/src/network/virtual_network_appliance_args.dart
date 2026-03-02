// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_network.dart';

/// {@template pulumi_network_virtual_network_appliance_args_doc}
/// The set of arguments for VirtualNetworkAppliance.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_appliance_args_doc}
class VirtualNetworkApplianceArgs {
  /// Bandwidth of the VirtualNetworkAppliance resource in Gbps.
  final pulumi.Input<String>? bandwidthInGbps;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the subnet resource.
  final pulumi.Input<SubnetNetwork>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the virtual network appliance.
  final pulumi.Input<String>? virtualNetworkApplianceName;

  /// Creates a new [VirtualNetworkApplianceArgs].
  /// [bandwidthInGbps] Bandwidth of the VirtualNetworkAppliance resource in Gbps.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [subnet] The reference to the subnet resource.
  /// [tags] Resource tags.
  /// [virtualNetworkApplianceName] The name of the virtual network appliance.
  VirtualNetworkApplianceArgs({
    this.bandwidthInGbps,
    this.id,
    this.location,
    required this.resourceGroupName,
    this.subnet,
    this.tags,
    this.virtualNetworkApplianceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInGbps': ?bandwidthInGbps,
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'subnet': ?subnet,
      'tags': ?tags,
      'virtualNetworkApplianceName': ?virtualNetworkApplianceName,
    };
  }

  factory VirtualNetworkApplianceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkApplianceArgs(
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : (map['bandwidthInGbps']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as SubnetNetwork).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkApplianceName: map['virtualNetworkApplianceName'] == null ? null : (map['virtualNetworkApplianceName']! as String).input(),
    );
  }
}

