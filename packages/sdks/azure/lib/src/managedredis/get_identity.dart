// ignore_for_file: unused_element, unnecessary_cast


class GetIdentity {
  /// A list of User Assigned Managed Identity IDs assigned to the Managed Redis instance.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on the Managed Redis instance.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on the Managed Redis instance.
  final String tenantId;
  /// The type of Managed Service Identity configured on the Managed Redis instance.
  final String type;

  /// Creates a new [GetIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs assigned to the Managed Redis instance.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on the Managed Redis instance.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on the Managed Redis instance.
  /// [type] The type of Managed Service Identity configured on the Managed Redis instance.
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

