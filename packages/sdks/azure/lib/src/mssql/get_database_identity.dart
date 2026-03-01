// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Microsoft SQL Database.
  final List<String> identityIds;
  /// The type of Managed Service Identity that is configured on this Microsoft SQL Database.
  final String type;

  /// Creates a new [GetDatabaseIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Microsoft SQL Database.
  /// [type] The type of Managed Service Identity that is configured on this Microsoft SQL Database.
  GetDatabaseIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory GetDatabaseIdentity.fromMap(Map<String, dynamic> map) {
    return GetDatabaseIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

