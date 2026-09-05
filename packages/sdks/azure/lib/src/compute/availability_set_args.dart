// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_availability_set_availability_set_args_doc}
/// The set of arguments for AvailabilitySet.
/// {@endtemplate}
/// {@macro pulumi_compute_availability_set_availability_set_args_doc}
class AvailabilitySetArgs {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies whether the availability set is managed or not. Possible values are `true` (to specify aligned) or `false` (to specify classic). Default is `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? managed;
  /// Specifies the name of the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the number of fault domains that are used. Defaults to `3`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The number of Fault Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview).
  final pulumi.Input<int?>? platformFaultDomainCount;
  /// Specifies the number of update domains that are used. Defaults to `5`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The number of Update Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview).
  final pulumi.Input<int?>? platformUpdateDomainCount;
  /// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? proximityPlacementGroupId;
  /// The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AvailabilitySetArgs].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [managed] Specifies whether the availability set is managed or not. Possible values are `true` (to specify aligned) or `false` (to specify classic). Default is `true`. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the availability set. Changing this forces a new resource to be created.
  /// [platformFaultDomainCount] Specifies the number of fault domains that are used. Defaults to `3`. Changing this forces a new resource to be created.
  /// [platformUpdateDomainCount] Specifies the number of update domains that are used. Defaults to `5`. Changing this forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const AvailabilitySetArgs({
    this.location,
    this.managed,
    this.name,
    this.platformFaultDomainCount,
    this.platformUpdateDomainCount,
    this.proximityPlacementGroupId,
    required this.resourceGroupName,
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
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return AvailabilitySetArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformFaultDomainCount: (() { final guardedValue = map['platformFaultDomainCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      platformUpdateDomainCount: (() { final guardedValue = map['platformUpdateDomainCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      proximityPlacementGroupId: (() { final guardedValue = map['proximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
