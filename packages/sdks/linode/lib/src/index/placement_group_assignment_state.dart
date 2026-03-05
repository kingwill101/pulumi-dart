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
    this.compliantOnly,
    this.linodeId,
    this.placementGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliantOnly': ?compliantOnly,
      'linodeId': ?linodeId,
      'placementGroupId': ?placementGroupId,
    };
  }

  factory PlacementGroupAssignmentState.fromMap(Map<String, dynamic> map) {
    return PlacementGroupAssignmentState(
      compliantOnly: (() { final guardedValue = map['compliantOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linodeId: (() { final guardedValue = map['linodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      placementGroupId: (() { final guardedValue = map['placementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

