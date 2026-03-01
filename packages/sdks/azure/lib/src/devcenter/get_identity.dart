// ignore_for_file: unused_element, unnecessary_cast


class GetIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Dev Center.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Dev Center.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Dev Center.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Dev Center.
  final String type;

  /// Creates a new [GetIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Dev Center.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Dev Center.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Dev Center.
  /// [type] The type of Managed Service Identity that is configured on this Dev Center.
  GetIdentity({
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

  factory GetIdentity.fromMap(Map<String, dynamic> map) {
    return GetIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

