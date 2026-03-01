// ignore_for_file: unused_element, unnecessary_cast


class GetServiceIdentity {
  /// The list of User Assigned Managed Service Identity IDs assigned to this Search Service.
  final List<String> identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final String principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String tenantId;
  /// The identity type of this Managed Service Identity.
  final String type;

  /// Creates a new [GetServiceIdentity].
  /// [identityIds] The list of User Assigned Managed Service Identity IDs assigned to this Search Service.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] The identity type of this Managed Service Identity.
  GetServiceIdentity({
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

  factory GetServiceIdentity.fromMap(Map<String, dynamic> map) {
    return GetServiceIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

