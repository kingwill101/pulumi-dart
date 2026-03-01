// ignore_for_file: unused_element, unnecessary_cast


class GetServerIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Microsoft SQL Server.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Microsoft SQL Server.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Microsoft SQL Server.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Microsoft SQL Server.
  final String type;

  /// Creates a new [GetServerIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Microsoft SQL Server.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Microsoft SQL Server.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Microsoft SQL Server.
  /// [type] The type of Managed Service Identity that is configured on this Microsoft SQL Server.
  GetServerIdentity({
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

  factory GetServerIdentity.fromMap(Map<String, dynamic> map) {
    return GetServerIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

