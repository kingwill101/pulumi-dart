// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DedicatedHostGroup resources.
class DedicatedHostGroupState {
  /// Would virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group? Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? automaticPlacementEnabled;
  /// The Azure location where the Dedicated Host Group exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the Dedicated Host Group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The number of fault domains that the Dedicated Host Group spans. Changing this forces a new resource to be created.
  final pulumi.Input<int?>? platformFaultDomainCount;
  /// Specifies the name of the resource group the Dedicated Host Group is located in. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies the Availability Zone in which this Dedicated Host Group should be located. Changing this forces a new Dedicated Host Group to be created.
  final pulumi.Input<String?>? zone;

  /// Creates a new [DedicatedHostGroupState].
  /// [automaticPlacementEnabled] Would virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group? Defaults to `false`. Changing this forces a new resource to be created.
  /// [location] The Azure location where the Dedicated Host Group exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dedicated Host Group. Changing this forces a new resource to be created.
  /// [platformFaultDomainCount] The number of fault domains that the Dedicated Host Group spans. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the resource group the Dedicated Host Group is located in. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zone] Specifies the Availability Zone in which this Dedicated Host Group should be located. Changing this forces a new Dedicated Host Group to be created.
  const DedicatedHostGroupState({
    this.automaticPlacementEnabled,
    this.location,
    this.name,
    this.platformFaultDomainCount,
    this.resourceGroupName,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticPlacementEnabled': ?automaticPlacementEnabled,
      'location': ?location,
      'name': ?name,
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory DedicatedHostGroupState.fromMap(Map<String, dynamic> map) {
    return DedicatedHostGroupState(
      automaticPlacementEnabled: (() { final guardedValue = map['automaticPlacementEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformFaultDomainCount: (() { final guardedValue = map['platformFaultDomainCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
