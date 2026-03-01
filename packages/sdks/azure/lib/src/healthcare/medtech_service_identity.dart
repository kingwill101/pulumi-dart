// ignore_for_file: unused_element, unnecessary_cast


class MedtechServiceIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Healthcare Med Tech Service.
  final List<String>? identityIds;
  /// The Principal ID associated with this System Assigned Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this System Assigned Managed Service Identity.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Healthcare Med Tech Service. Possible values are `SystemAssigned`.
  final String type;

  /// Creates a new [MedtechServiceIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Healthcare Med Tech Service.
  /// [principalId] The Principal ID associated with this System Assigned Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this System Assigned Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Healthcare Med Tech Service. Possible values are `SystemAssigned`.
  MedtechServiceIdentity({
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

  factory MedtechServiceIdentity.fromMap(Map<String, dynamic> map) {
    return MedtechServiceIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

