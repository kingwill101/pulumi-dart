// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_virtual_wan_args_doc}
/// The set of arguments for VirtualWan.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_wan_args_doc}
class VirtualWanArgs {
  /// True if branch to branch traffic is allowed.
  final pulumi.Input<bool>? allowBranchToBranchTraffic;
  /// True if Vnet to Vnet traffic is allowed.
  final pulumi.Input<bool>? allowVnetToVnetTraffic;
  /// Vpn encryption to be disabled or not.
  final pulumi.Input<bool>? disableVpnEncryption;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The resource group name of the VirtualWan.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the VirtualWAN.
  final pulumi.Input<String>? type;
  /// The name of the VirtualWAN being created or updated.
  final pulumi.Input<String>? virtualWANName;

  /// Creates a new [VirtualWanArgs].
  /// [allowBranchToBranchTraffic] True if branch to branch traffic is allowed.
  /// [allowVnetToVnetTraffic] True if Vnet to Vnet traffic is allowed.
  /// [disableVpnEncryption] Vpn encryption to be disabled or not.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The resource group name of the VirtualWan.
  /// [tags] Resource tags.
  /// [type] The type of the VirtualWAN.
  /// [virtualWANName] The name of the VirtualWAN being created or updated.
  const VirtualWanArgs({
    this.allowBranchToBranchTraffic,
    this.allowVnetToVnetTraffic,
    this.disableVpnEncryption,
    this.id,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.type,
    this.virtualWANName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowBranchToBranchTraffic': ?allowBranchToBranchTraffic,
      'allowVnetToVnetTraffic': ?allowVnetToVnetTraffic,
      'disableVpnEncryption': ?disableVpnEncryption,
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'type': ?type,
      'virtualWANName': ?virtualWANName,
    };
  }

  factory VirtualWanArgs.fromMap(Map<String, dynamic> map) {
    return VirtualWanArgs(
      allowBranchToBranchTraffic: (() { final guardedValue = map['allowBranchToBranchTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowVnetToVnetTraffic: (() { final guardedValue = map['allowVnetToVnetTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableVpnEncryption: (() { final guardedValue = map['disableVpnEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualWANName: (() { final guardedValue = map['virtualWANName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
