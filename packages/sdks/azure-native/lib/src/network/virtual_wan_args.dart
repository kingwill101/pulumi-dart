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
    pulumi.Output<bool>? allowBranchToBranchTraffic,
    pulumi.Output<bool>? allowVnetToVnetTraffic,
    pulumi.Output<bool>? disableVpnEncryption,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? virtualWANName,
  }) :
      allowBranchToBranchTraffic = pulumi.Input.asOptionalInput<bool>(allowBranchToBranchTraffic),
      allowVnetToVnetTraffic = pulumi.Input.asOptionalInput<bool>(allowVnetToVnetTraffic),
      disableVpnEncryption = pulumi.Input.asOptionalInput<bool>(disableVpnEncryption),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      virtualWANName = pulumi.Input.asOptionalInput<String>(virtualWANName);

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
      allowBranchToBranchTraffic: map['allowBranchToBranchTraffic'] == null ? null : pulumi.Output.create<bool>(map['allowBranchToBranchTraffic'] as bool),
      allowVnetToVnetTraffic: map['allowVnetToVnetTraffic'] == null ? null : pulumi.Output.create<bool>(map['allowVnetToVnetTraffic'] as bool),
      disableVpnEncryption: map['disableVpnEncryption'] == null ? null : pulumi.Output.create<bool>(map['disableVpnEncryption'] as bool),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      virtualWANName: map['virtualWANName'] == null ? null : pulumi.Output.create<String>(map['virtualWANName'] as String),
    );
  }
}

