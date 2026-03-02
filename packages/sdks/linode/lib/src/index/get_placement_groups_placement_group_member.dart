// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlacementGroupsPlacementGroupMember {
  /// Whether this Linode is currently compliant with the group's placement group type.
  final pulumi.Input<bool> isCompliant;
  /// The unique identifier for the Linode being migrated out of the placement group.
  final pulumi.Input<int> linodeId;

  /// Creates a new [GetPlacementGroupsPlacementGroupMember].
  /// [isCompliant] Whether this Linode is currently compliant with the group's placement group type.
  /// [linodeId] The unique identifier for the Linode being migrated out of the placement group.
  GetPlacementGroupsPlacementGroupMember({
    required this.isCompliant,
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCompliant': isCompliant,
      'linodeId': linodeId,
    };
  }

  factory GetPlacementGroupsPlacementGroupMember.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsPlacementGroupMember(
      isCompliant: (map['isCompliant'] as bool).input(),
      linodeId: (map['linodeId'] as int).input(),
    );
  }
}

