// ignore_for_file: unused_element, unnecessary_cast


class PoolIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Batch Account.
  final List<String> identityIds;
  /// Specifies the type of Managed Service Identity that should be configured on this Batch Account. Only possible value is `UserAssigned`.
  final String type;

  /// Creates a new [PoolIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Batch Account.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Batch Account. Only possible value is `UserAssigned`.
  PoolIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory PoolIdentity.fromMap(Map<String, dynamic> map) {
    return PoolIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

