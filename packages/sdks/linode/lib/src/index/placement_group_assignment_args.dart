// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_placement_group_assignment_placement_group_assignment_args_doc}
/// The set of arguments for PlacementGroupAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_placement_group_assignment_placement_group_assignment_args_doc}
class PlacementGroupAssignmentArgs {
  final pulumi.Input<bool>? compliantOnly;

  /// The unique ID of the Linode to assign.
  final pulumi.Input<int> linodeId;

  /// The unique ID of the target Placement Group.
  final pulumi.Input<int> placementGroupId;

  /// Creates a new [PlacementGroupAssignmentArgs].
  /// [compliantOnly] Optional.
  /// [linodeId] The unique ID of the Linode to assign.
  /// [placementGroupId] The unique ID of the target Placement Group.
  PlacementGroupAssignmentArgs({
    this.compliantOnly,
    required this.linodeId,
    required this.placementGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliantOnly': ?compliantOnly,
      'linodeId': linodeId,
      'placementGroupId': placementGroupId,
    };
  }

  factory PlacementGroupAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return PlacementGroupAssignmentArgs(
      compliantOnly: (() {
        final guardedValue = map['compliantOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
      placementGroupId: pulumi.Input.fromValue(map['placementGroupId'] as int),
    );
  }
}
