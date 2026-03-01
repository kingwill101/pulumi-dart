// ignore_for_file: unused_element, unnecessary_cast


class ManagedInstanceIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Managed Instance. Required when `type` includes `UserAssigned`.
  ///
  /// > **Note:** The assigned `principal_id` and `tenant_id` can be retrieved after the identity `type` has been set to `SystemAssigned` and SQL Managed Instance has been created.
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this SQL Managed Instance. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [ManagedInstanceIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Managed Instance. Required when `type` includes `UserAssigned`.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this SQL Managed Instance. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`.
  ManagedInstanceIdentity({
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

  factory ManagedInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

