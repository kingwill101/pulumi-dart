// ignore_for_file: unused_element, unnecessary_cast


class GetDomainIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this EventGrid Domain.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this EventGrid Domain.
  final String type;

  /// Creates a new [GetDomainIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this EventGrid Domain.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity.
  /// [type] The type of Managed Service Identity that is configured on this EventGrid Domain.
  GetDomainIdentity({
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

  factory GetDomainIdentity.fromMap(Map<String, dynamic> map) {
    return GetDomainIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

