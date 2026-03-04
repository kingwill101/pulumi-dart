// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlacementGroupsPlacementGroupMigrationsOutbound {
  /// The unique identifier for the Linode being migrated out of the placement group.
  final pulumi.Input<int> linodeId;

  /// Creates a new [GetPlacementGroupsPlacementGroupMigrationsOutbound].
  /// [linodeId] The unique identifier for the Linode being migrated out of the placement group.
  GetPlacementGroupsPlacementGroupMigrationsOutbound({required this.linodeId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'linodeId': linodeId};
  }

  factory GetPlacementGroupsPlacementGroupMigrationsOutbound.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPlacementGroupsPlacementGroupMigrationsOutbound(
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
    );
  }
}
