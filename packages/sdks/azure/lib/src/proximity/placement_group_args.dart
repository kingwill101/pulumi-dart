// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_proximity_placement_group_placement_group_args_doc}
/// The set of arguments for PlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_proximity_placement_group_placement_group_args_doc}
class PlacementGroupArgs {
  /// Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group.
  ///
  /// &gt; **Note:** Removing `allowedVmSizes` after it is set forces a new resource to be created.
  final pulumi.Input<List<String>?>? allowedVmSizes;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the proximity placement group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `allowedVmSizes` must be set when `zone` is specified.
  final pulumi.Input<String?>? zone;

  /// Creates a new [PlacementGroupArgs].
  /// [allowedVmSizes] Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the proximity placement group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zone] Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created.
  const PlacementGroupArgs({
    this.allowedVmSizes,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedVmSizes': ?allowedVmSizes,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory PlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return PlacementGroupArgs(
      allowedVmSizes: (() { final guardedValue = map['allowedVmSizes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
