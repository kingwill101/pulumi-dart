// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeGroupIdentity {
  /// A list of the User Assigned Identity IDs assigned to this Elastic SAN Volume Group.
  final List<String> identityIds;
  /// The Principal ID associated with the Managed Service Identity assigned to this Elastic SAN Volume Group.
  final String principalId;
  /// The Tenant ID associated with this Managed Service Identity assigned to this Elastic SAN Volume Group.
  final String tenantId;
  /// The type of Managed Identity assigned to this Elastic SAN Volume Group.
  final String type;

  /// Creates a new [GetVolumeGroupIdentity].
  /// [identityIds] A list of the User Assigned Identity IDs assigned to this Elastic SAN Volume Group.
  /// [principalId] The Principal ID associated with the Managed Service Identity assigned to this Elastic SAN Volume Group.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity assigned to this Elastic SAN Volume Group.
  /// [type] The type of Managed Identity assigned to this Elastic SAN Volume Group.
  GetVolumeGroupIdentity({
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

  factory GetVolumeGroupIdentity.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

