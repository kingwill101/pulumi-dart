// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DedicatedHostGroup resources.
class DedicatedHostGroupState {
  /// Would virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group? Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? automaticPlacementEnabled;
  /// The Azure location where the Dedicated Host Group exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Dedicated Host Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The number of fault domains that the Dedicated Host Group spans. Changing this forces a new resource to be created.
  final pulumi.Input<int>? platformFaultDomainCount;
  /// Specifies the name of the resource group the Dedicated Host Group is located in. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Availability Zone in which this Dedicated Host Group should be located. Changing this forces a new Dedicated Host Group to be created.
  final pulumi.Input<String>? zone;

  /// Creates a new [DedicatedHostGroupState].
  /// [automaticPlacementEnabled] Would virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group? Defaults to `false`. Changing this forces a new resource to be created.
  /// [location] The Azure location where the Dedicated Host Group exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dedicated Host Group. Changing this forces a new resource to be created.
  /// [platformFaultDomainCount] The number of fault domains that the Dedicated Host Group spans. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the resource group the Dedicated Host Group is located in. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zone] Specifies the Availability Zone in which this Dedicated Host Group should be located. Changing this forces a new Dedicated Host Group to be created.
  DedicatedHostGroupState({
    pulumi.Output<bool>? automaticPlacementEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<int>? platformFaultDomainCount,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zone,
  }) :
      automaticPlacementEnabled = pulumi.Input.asOptionalInput<bool>(automaticPlacementEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      platformFaultDomainCount = pulumi.Input.asOptionalInput<int>(platformFaultDomainCount),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      automaticPlacementEnabled: map['automaticPlacementEnabled'] == null ? null : pulumi.Output.create<bool>(map['automaticPlacementEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : pulumi.Output.create<int>(map['platformFaultDomainCount'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

