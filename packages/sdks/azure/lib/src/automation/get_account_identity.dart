// ignore_for_file: unused_element, unnecessary_cast


class GetAccountIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Automation Account.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Automation Account.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Automation Account.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Automation Account.
  final String type;

  /// Creates a new [GetAccountIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Automation Account.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Automation Account.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Automation Account.
  /// [type] The type of Managed Service Identity that is configured on this Automation Account.
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

