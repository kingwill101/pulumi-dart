// ignore_for_file: unused_element, unnecessary_cast


class ProjectEnvironmentTypeIdentity {
  /// The ID of the User Assigned Identity which should be assigned to this Dev Center Project Environment Type.
  ///
  /// > **Note:** `identity_ids` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// The type of identity used for this Dev Center Project Environment Type. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [ProjectEnvironmentTypeIdentity].
  /// [identityIds] The ID of the User Assigned Identity which should be assigned to this Dev Center Project Environment Type.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of identity used for this Dev Center Project Environment Type. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  ProjectEnvironmentTypeIdentity({
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

  factory ProjectEnvironmentTypeIdentity.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentTypeIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

