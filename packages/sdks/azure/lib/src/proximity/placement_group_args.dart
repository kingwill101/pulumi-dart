// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_proximity_placement_group_placement_group_args_doc}
/// The set of arguments for PlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_proximity_placement_group_placement_group_args_doc}
class PlacementGroupArgs {
  /// Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group.
  ///
  /// > **Note:** Removing `allowed_vm_sizes` after it is set forces a new resource to be created.
  final pulumi.Input<List<String>>? allowedVmSizes;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the proximity placement group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `allowed_vm_sizes` must be set when `zone` is specified.
  final pulumi.Input<String>? zone;

  /// Creates a new [PlacementGroupArgs].
  /// [allowedVmSizes] Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the proximity placement group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zone] Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created.
  PlacementGroupArgs({
    pulumi.Output<List<String>>? allowedVmSizes,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zone,
  }) :
      allowedVmSizes = pulumi.Input.asOptionalInput<List<String>>(allowedVmSizes),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      allowedVmSizes: map['allowedVmSizes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedVmSizes'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

