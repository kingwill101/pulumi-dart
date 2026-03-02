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
    this.location,
    this.managed,
    this.name,
    this.platformFaultDomainCount,
    this.platformUpdateDomainCount,
    this.proximityPlacementGroupId,
    this.resourceGroupName,
    this.tags,
  });

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
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managed: map['managed'] == null ? null : (map['managed']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : (map['platformFaultDomainCount']! as int).input(),
      platformUpdateDomainCount: map['platformUpdateDomainCount'] == null ? null : (map['platformUpdateDomainCount']! as int).input(),
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : (map['proximityPlacementGroupId']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

