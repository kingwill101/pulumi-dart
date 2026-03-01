// ignore_for_file: unused_element, unnecessary_cast


class GetDiskEncryptionSetIdentity {
  /// A list of User Assigned Managed Identity IDs assigned to this Disk Encryption Set.
  final List<String> identityIds;
  /// The (Client) ID of the Service Principal.
  final String principalId;
  /// The ID of the Tenant the Service Principal is assigned in.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Disk Encryption Set.
  final String type;

  /// Creates a new [GetDiskEncryptionSetIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs assigned to this Disk Encryption Set.
  /// [principalId] The (Client) ID of the Service Principal.
  /// [tenantId] The ID of the Tenant the Service Principal is assigned in.
  /// [type] The type of Managed Service Identity that is configured on this Disk Encryption Set.
  GetDiskEncryptionSetIdentity({
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

  factory GetDiskEncryptionSetIdentity.fromMap(Map<String, dynamic> map) {
    return GetDiskEncryptionSetIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

