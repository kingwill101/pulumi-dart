// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualWan resources.
class VirtualWanState {
  /// Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `true`.
  final pulumi.Input<bool>? allowBranchToBranchTraffic;
  /// Boolean flag to specify whether VPN encryption is disabled. Defaults to `false`.
  final pulumi.Input<bool>? disableVpnEncryption;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Virtual WAN. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Office365 local breakout category. Possible values include: `Optimize`, `OptimizeAndAllow`, `All`, `None`. Defaults to `None`.
  final pulumi.Input<String>? office365LocalBreakoutCategory;
  /// The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the Virtual WAN.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Virtual WAN type. Possible Values include: `Basic` and `Standard`. Defaults to `Standard`.
  final pulumi.Input<String>? type;

  /// Creates a new [VirtualWanState].
  /// [allowBranchToBranchTraffic] Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `true`.
  /// [disableVpnEncryption] Boolean flag to specify whether VPN encryption is disabled. Defaults to `false`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Virtual WAN. Changing this forces a new resource to be created.
  /// [office365LocalBreakoutCategory] Specifies the Office365 local breakout category. Possible values include: `Optimize`, `OptimizeAndAllow`, `All`, `None`. Defaults to `None`.
  /// [resourceGroupName] The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Virtual WAN.
  /// [type] Specifies the Virtual WAN type. Possible Values include: `Basic` and `Standard`. Defaults to `Standard`.
  const VirtualWanState({
    this.allowBranchToBranchTraffic,
    this.disableVpnEncryption,
    this.location,
    this.name,
    this.office365LocalBreakoutCategory,
    this.resourceGroupName,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowBranchToBranchTraffic': ?allowBranchToBranchTraffic,
      'disableVpnEncryption': ?disableVpnEncryption,
      'location': ?location,
      'name': ?name,
      'office365LocalBreakoutCategory': ?office365LocalBreakoutCategory,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory VirtualWanState.fromMap(Map<String, dynamic> map) {
    return VirtualWanState(
      allowBranchToBranchTraffic: (() { final guardedValue = map['allowBranchToBranchTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableVpnEncryption: (() { final guardedValue = map['disableVpnEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      office365LocalBreakoutCategory: (() { final guardedValue = map['office365LocalBreakoutCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
