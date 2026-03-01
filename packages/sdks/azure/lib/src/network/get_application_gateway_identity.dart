// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Application Gateway.
  final List<String> identityIds;
  final String principalId;
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Application Gateway.
  final String type;

  /// Creates a new [GetApplicationGatewayIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Application Gateway.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] The type of Managed Service Identity that is configured on this Application Gateway.
  GetApplicationGatewayIdentity({
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

  factory GetApplicationGatewayIdentity.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

