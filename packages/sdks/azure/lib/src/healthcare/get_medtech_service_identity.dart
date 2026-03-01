// ignore_for_file: unused_element, unnecessary_cast


class GetMedtechServiceIdentity {
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Healthcare Med Tech Service.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Healthcare Med Tech Service.
  final String tenantId;
  /// The type of identity used for the Healthcare Med Tech Service. Possible values are `SystemAssigned`.
  final String type;

  /// Creates a new [GetMedtechServiceIdentity].
  /// [identityIds] Required.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Healthcare Med Tech Service.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Healthcare Med Tech Service.
  /// [type] The type of identity used for the Healthcare Med Tech Service. Possible values are `SystemAssigned`.
  GetMedtechServiceIdentity({
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

  factory GetMedtechServiceIdentity.fromMap(Map<String, dynamic> map) {
    return GetMedtechServiceIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

