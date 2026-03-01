// ignore_for_file: unused_element, unnecessary_cast


class GetGroupIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Container Group.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Container Group.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Container Group.
  final String tenantId;
  /// Type of Managed Service Identity configured on this Container Group.
  final String type;

  /// Creates a new [GetGroupIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Container Group.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Container Group.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Container Group.
  /// [type] Type of Managed Service Identity configured on this Container Group.
  GetGroupIdentity({
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

  factory GetGroupIdentity.fromMap(Map<String, dynamic> map) {
    return GetGroupIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

