// ignore_for_file: unused_element, unnecessary_cast


class ProjectIdentity {
  /// The ID of the User Assigned Identity which should be assigned to this Dev Center Project.
  ///
  /// > **Note:** `identity_ids` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this Dev Center Project.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Dev Center Project.
  final String? tenantId;
  /// The type of identity used for this Dev Center Project. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [ProjectIdentity].
  /// [identityIds] The ID of the User Assigned Identity which should be assigned to this Dev Center Project.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Dev Center Project.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Dev Center Project.
  /// [type] The type of identity used for this Dev Center Project. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  ProjectIdentity({
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

  factory ProjectIdentity.fromMap(Map<String, dynamic> map) {
    return ProjectIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

