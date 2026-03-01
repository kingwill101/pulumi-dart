// ignore_for_file: unused_element, unnecessary_cast


class VolumeGroupIdentity {
  /// A list of the User Assigned Identity IDs that should be assigned to this Elastic SAN Volume Group.
  final List<String>? identityIds;
  /// The Principal ID associated with the Managed Service Identity assigned to this Elastic SAN Volume Group.
  final String? principalId;
  /// The Tenant ID associated with this Managed Service Identity assigned to this Elastic SAN Volume Group.
  final String? tenantId;
  /// Specifies the type of Managed Identity that should be assigned to this Elastic SAN Volume Group. Possible values are `SystemAssigned` and `UserAssigned`.
  final String type;

  /// Creates a new [VolumeGroupIdentity].
  /// [identityIds] A list of the User Assigned Identity IDs that should be assigned to this Elastic SAN Volume Group.
  /// [principalId] The Principal ID associated with the Managed Service Identity assigned to this Elastic SAN Volume Group.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity assigned to this Elastic SAN Volume Group.
  /// [type] Specifies the type of Managed Identity that should be assigned to this Elastic SAN Volume Group. Possible values are `SystemAssigned` and `UserAssigned`.
  VolumeGroupIdentity({
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

  factory VolumeGroupIdentity.fromMap(Map<String, dynamic> map) {
    return VolumeGroupIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

