// ignore_for_file: unused_element, unnecessary_cast


class GetAppIdentity {
  /// A list of one or more Resource IDs for User Assigned Managed identities to assign.
  final List<String> identityIds;
  final String principalId;
  final String tenantId;
  /// The type of managed identity to assign.
  final String type;

  /// Creates a new [GetAppIdentity].
  /// [identityIds] A list of one or more Resource IDs for User Assigned Managed identities to assign.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] The type of managed identity to assign.
  GetAppIdentity({
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

  factory GetAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetAppIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

