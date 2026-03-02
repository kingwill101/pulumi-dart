// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PlacementGroup resources.
class PlacementGroupState {
  /// Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group.
  ///
  /// > **Note:** Removing `allowed_vm_sizes` after it is set forces a new resource to be created.
  final pulumi.Input<List<String>>? allowedVmSizes;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the proximity placement group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `allowed_vm_sizes` must be set when `zone` is specified.
  final pulumi.Input<String>? zone;

  /// Creates a new [PlacementGroupState].
  /// [allowedVmSizes] Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the proximity placement group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zone] Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created.
  PlacementGroupState({
    this.allowedVmSizes,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedVmSizes': ?allowedVmSizes,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory PlacementGroupState.fromMap(Map<String, dynamic> map) {
    return PlacementGroupState(
      allowedVmSizes: map['allowedVmSizes'] == null ? null : ((map['allowedVmSizes'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

