// ignore_for_file: unused_element, unnecessary_cast


class GetManagedInstanceIdentity {
  /// A list of User Assigned Managed Identity IDs assigned with the Identity of this SQL Managed Instance.
  final List<String> identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  final String principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  final String tenantId;
  /// The identity type of the SQL Managed Instance.
  final String type;

  /// Creates a new [GetManagedInstanceIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs assigned with the Identity of this SQL Managed Instance.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  /// [type] The identity type of the SQL Managed Instance.
  GetManagedInstanceIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetManagedInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

