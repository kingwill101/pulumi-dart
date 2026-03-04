// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlacementGroupMigrationsInbound {
  /// The ID of the Linode.
  final pulumi.Input<int> linodeId;

  /// Creates a new [GetPlacementGroupMigrationsInbound].
  /// [linodeId] The ID of the Linode.
  GetPlacementGroupMigrationsInbound({required this.linodeId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'linodeId': linodeId};
  }

  factory GetPlacementGroupMigrationsInbound.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupMigrationsInbound(
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
    );
  }
}
