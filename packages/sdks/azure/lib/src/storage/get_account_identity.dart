// ignore_for_file: unused_element, unnecessary_cast


class GetAccountIdentity {
  /// A list of User Assigned Managed Identity IDs assigned with the Identity of this Storage Account.
  final List<String> identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this Storage Account.
  final String principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Storage Account.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Storage Account
  final String type;

  /// Creates a new [GetAccountIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs assigned with the Identity of this Storage Account.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Storage Account.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Storage Account.
  /// [type] The type of Managed Service Identity that is configured on this Storage Account
  GetAccountIdentity({
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

  factory GetAccountIdentity.fromMap(Map<String, dynamic> map) {
    return GetAccountIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

