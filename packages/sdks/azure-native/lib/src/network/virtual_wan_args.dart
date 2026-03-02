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
  VirtualWanArgs({
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
      allowBranchToBranchTraffic: map['allowBranchToBranchTraffic'] == null ? null : (map['allowBranchToBranchTraffic']! as bool).input(),
      allowVnetToVnetTraffic: map['allowVnetToVnetTraffic'] == null ? null : (map['allowVnetToVnetTraffic']! as bool).input(),
      disableVpnEncryption: map['disableVpnEncryption'] == null ? null : (map['disableVpnEncryption']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      virtualWANName: map['virtualWANName'] == null ? null : (map['virtualWANName']! as String).input(),
    );
  }
}

