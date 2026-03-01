// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PlacementGroupAssignment resources.
class PlacementGroupAssignmentState {
  final pulumi.Input<bool>? compliantOnly;
  /// The unique ID of the Linode to assign.
  final pulumi.Input<int>? linodeId;
  /// The unique ID of the target Placement Group.
  final pulumi.Input<int>? placementGroupId;

  /// Creates a new [PlacementGroupAssignmentState].
  /// [compliantOnly] Optional.
  /// [linodeId] The unique ID of the Linode to assign.
  /// [placementGroupId] The unique ID of the target Placement Group.
  PlacementGroupAssignmentState({
    pulumi.Output<bool>? compliantOnly,
    pulumi.Output<int>? linodeId,
    pulumi.Output<int>? placementGroupId,
  }) :
      compliantOnly = pulumi.Input.asOptionalInput<bool>(compliantOnly),
      linodeId = pulumi.Input.asOptionalInput<int>(linodeId),
      placementGroupId = pulumi.Input.asOptionalInput<int>(placementGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliantOnly': ?compliantOnly,
      'linodeId': ?linodeId,
      'placementGroupId': ?placementGroupId,
    };
  }

  factory PlacementGroupAssignmentState.fromMap(Map<String, dynamic> map) {
    return PlacementGroupAssignmentState(
      compliantOnly: map['compliantOnly'] == null ? null : pulumi.Output.create<bool>(map['compliantOnly'] as bool),
      linodeId: map['linodeId'] == null ? null : pulumi.Output.create<int>(map['linodeId'] as int),
      placementGroupId: map['placementGroupId'] == null ? null : pulumi.Output.create<int>(map['placementGroupId'] as int),
    );
  }
}

