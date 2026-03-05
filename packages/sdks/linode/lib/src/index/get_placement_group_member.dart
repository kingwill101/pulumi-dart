// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlacementGroupMember {
  /// Whether this Linode is currently compliant with the group's placement group type.
  final pulumi.Input<bool> isCompliant;
  /// The ID of the Linode.
  final pulumi.Input<int> linodeId;

  /// Creates a new [GetPlacementGroupMember].
  /// [isCompliant] Whether this Linode is currently compliant with the group's placement group type.
  /// [linodeId] The ID of the Linode.
  GetPlacementGroupMember({
    required this.isCompliant,
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCompliant': isCompliant,
      'linodeId': linodeId,
    };
  }

  factory GetPlacementGroupMember.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupMember(
      isCompliant: pulumi.Input.fromValue(map['isCompliant'] as bool),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
    );
  }
}

