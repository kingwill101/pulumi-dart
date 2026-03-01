// ignore_for_file: unused_element, unnecessary_cast


class AIServicesIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this AI Services Account.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this AI Services Account. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`
  final String type;

  /// Creates a new [AIServicesIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this AI Services Account.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this AI Services Account. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`
  AIServicesIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory AIServicesIdentity.fromMap(Map<String, dynamic> map) {
    return AIServicesIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

