// ignore_for_file: unused_element, unnecessary_cast


class MongoClusterIdentity {
  /// A list of one or more Resource IDs for User Assigned Managed identities to assign.
  ///
  /// > **Note:** Required when `type` is set to `UserAssigned`.
  final List<String> identityIds;
  /// The type of managed identity to assign. Possible value is `UserAssigned`.
  final String type;

  /// Creates a new [MongoClusterIdentity].
  /// [identityIds] A list of one or more Resource IDs for User Assigned Managed identities to assign.
  /// [type] The type of managed identity to assign. Possible value is `UserAssigned`.
  MongoClusterIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory MongoClusterIdentity.fromMap(Map<String, dynamic> map) {
    return MongoClusterIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

