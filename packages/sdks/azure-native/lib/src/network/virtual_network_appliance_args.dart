// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';

/// {@template pulumi_network_virtual_network_appliance_args_doc}
/// The set of arguments for VirtualNetworkAppliance.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_appliance_args_doc}
class VirtualNetworkApplianceArgs {
  /// Bandwidth of the VirtualNetworkAppliance resource in Gbps.
  final pulumi.Input<String?>? bandwidthInGbps;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the subnet resource.
  final pulumi.Input<Subnet?>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the virtual network appliance.
  final pulumi.Input<String?>? virtualNetworkApplianceName;

  /// Creates a new [VirtualNetworkApplianceArgs].
  /// [bandwidthInGbps] Bandwidth of the VirtualNetworkAppliance resource in Gbps.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnet] The reference to the subnet resource.
  /// [tags] Resource tags.
  /// [virtualNetworkApplianceName] The name of the virtual network appliance.
  const VirtualNetworkApplianceArgs({
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
      'subnet': ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetworkApplianceName': ?virtualNetworkApplianceName,
    };
  }

  factory VirtualNetworkApplianceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkApplianceArgs(
      bandwidthInGbps: (() { final guardedValue = map['bandwidthInGbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Subnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetworkApplianceName: (() { final guardedValue = map['virtualNetworkApplianceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
