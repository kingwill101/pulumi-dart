// ignore_for_file: unused_element, unnecessary_cast


class GetPlacementGroupMigrationsOutbound {
  /// The ID of the Linode.
  final int linodeId;

  /// Creates a new [GetPlacementGroupMigrationsOutbound].
  /// [linodeId] The ID of the Linode.
  GetPlacementGroupMigrationsOutbound({
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linodeId': linodeId,
    };
  }

  factory GetPlacementGroupMigrationsOutbound.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupMigrationsOutbound(
      linodeId: map['linodeId'] as int,
    );
  }
}

