// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AvailabilitySet resources.
class AvailabilitySetState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies whether the availability set is managed or not. Possible values are `true` (to specify aligned) or `false` (to specify classic). Default is `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? managed;
  /// Specifies the name of the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the number of fault domains that are used. Defaults to `3`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The number of Fault Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview).
  final pulumi.Input<int>? platformFaultDomainCount;
  /// Specifies the number of update domains that are used. Defaults to `5`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The number of Update Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview).
  final pulumi.Input<int>? platformUpdateDomainCount;
  /// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AvailabilitySetState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [managed] Specifies whether the availability set is managed or not. Possible values are `true` (to specify aligned) or `false` (to specify classic). Default is `true`. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the availability set. Changing this forces a new resource to be created.
  /// [platformFaultDomainCount] Specifies the number of fault domains that are used. Defaults to `3`. Changing this forces a new resource to be created.
  /// [platformUpdateDomainCount] Specifies the number of update domains that are used. Defaults to `5`. Changing this forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  AvailabilitySetState({
    pulumi.Output<String>? location,
    pulumi.Output<bool>? managed,
    pulumi.Output<String>? name,
    pulumi.Output<int>? platformFaultDomainCount,
    pulumi.Output<int>? platformUpdateDomainCount,
    pulumi.Output<String>? proximityPlacementGroupId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      managed = pulumi.Input.asOptionalInput<bool>(managed),
      name = pulumi.Input.asOptionalInput<String>(name),
      platformFaultDomainCount = pulumi.Input.asOptionalInput<int>(platformFaultDomainCount),
      platformUpdateDomainCount = pulumi.Input.asOptionalInput<int>(platformUpdateDomainCount),
      proximityPlacementGroupId = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managed': ?managed,
      'name': ?name,
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'platformUpdateDomainCount': ?platformUpdateDomainCount,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AvailabilitySetState.fromMap(Map<String, dynamic> map) {
    return AvailabilitySetState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managed: map['managed'] == null ? null : pulumi.Output.create<bool>(map['managed'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : pulumi.Output.create<int>(map['platformFaultDomainCount'] as int),
      platformUpdateDomainCount: map['platformUpdateDomainCount'] == null ? null : pulumi.Output.create<int>(map['platformUpdateDomainCount'] as int),
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroupId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

