// ignore_for_file: unused_element, unnecessary_cast


class GetServerIdentity {
  /// The ID of the System Managed Service Principal assigned to the PostgreSQL Server.
  final String principalId;
  /// The ID of the Tenant of the System Managed Service Principal assigned to the PostgreSQL Server.
  final String tenantId;
  /// The identity type of the Managed Identity assigned to the PostgreSQL Server.
  final String type;

  /// Creates a new [GetServerIdentity].
  /// [principalId] The ID of the System Managed Service Principal assigned to the PostgreSQL Server.
  /// [tenantId] The ID of the Tenant of the System Managed Service Principal assigned to the PostgreSQL Server.
  /// [type] The identity type of the Managed Identity assigned to the PostgreSQL Server.
  GetServerIdentity({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetServerIdentity.fromMap(Map<String, dynamic> map) {
    return GetServerIdentity(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

