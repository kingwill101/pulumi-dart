// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_placement_group_get_placement_group_args_doc}
/// Arguments for getPlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_placement_group_get_placement_group_args_doc}
class GetPlacementGroupArgs {
  /// The ID of the Placement Group.
  final pulumi.Input<int> id;

  /// Creates a new [GetPlacementGroupArgs].
  /// [id] The ID of the Placement Group.
  const GetPlacementGroupArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetPlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupArgs(
      id: pulumi.Input.fromValue(map['id'] as int),
    );
  }
}

