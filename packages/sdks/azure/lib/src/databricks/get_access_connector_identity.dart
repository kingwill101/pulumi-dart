// ignore_for_file: unused_element, unnecessary_cast


class GetAccessConnectorIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Access Connector.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Access Connector.
  final String type;

  /// Creates a new [GetAccessConnectorIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Access Connector.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  /// [type] The type of Managed Service Identity that is configured on this Access Connector.
  GetAccessConnectorIdentity({
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

  factory GetAccessConnectorIdentity.fromMap(Map<String, dynamic> map) {
    return GetAccessConnectorIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

