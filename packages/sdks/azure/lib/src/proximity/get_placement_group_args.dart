// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_proximity_get_placement_group_get_placement_group_args_doc}
/// Arguments for getPlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_proximity_get_placement_group_get_placement_group_args_doc}
class GetPlacementGroupArgs {
  /// The name of the Proximity Placement Group.
  final pulumi.Input<String> name;

  /// The name of the resource group in which the Proximity Placement Group exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPlacementGroupArgs].
  /// [name] The name of the Proximity Placement Group.
  /// [resourceGroupName] The name of the resource group in which the Proximity Placement Group exists.
  GetPlacementGroupArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
