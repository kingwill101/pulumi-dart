// ignore_for_file: unused_element, unnecessary_cast


class GetPlacementGroupsPlacementGroupMember {
  /// Whether this Linode is currently compliant with the group's placement group type.
  final bool isCompliant;
  /// The unique identifier for the Linode being migrated out of the placement group.
  final int linodeId;

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
      isCompliant: map['isCompliant'] as bool,
      linodeId: map['linodeId'] as int,
    );
  }
}

