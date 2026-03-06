// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlacementGroupMigrationsOutbound {
  /// The ID of the Linode.
  final pulumi.Input<int> linodeId;

  /// Creates a new [GetPlacementGroupMigrationsOutbound].
  /// [linodeId] The ID of the Linode.
  const GetPlacementGroupMigrationsOutbound({
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linodeId': linodeId,
    };
  }

  factory GetPlacementGroupMigrationsOutbound.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupMigrationsOutbound(
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
    );
  }
}

