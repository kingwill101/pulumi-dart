// ignore_for_file: unused_element, unnecessary_cast


class DatabaseIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Database.
  final List<String> identityIds;
  /// Specifies the type of Managed Service Identity that should be configured on this SQL Database. Possible value is `UserAssigned`.
  final String type;

  /// Creates a new [DatabaseIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Database.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this SQL Database. Possible value is `UserAssigned`.
  DatabaseIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory DatabaseIdentity.fromMap(Map<String, dynamic> map) {
    return DatabaseIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

