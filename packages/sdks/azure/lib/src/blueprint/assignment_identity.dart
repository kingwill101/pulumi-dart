// ignore_for_file: unused_element, unnecessary_cast


class AssignmentIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Blueprint.
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Blueprint. Possible values are `SystemAssigned` and `UserAssigned`.
  final String type;

  /// Creates a new [AssignmentIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Blueprint.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Blueprint. Possible values are `SystemAssigned` and `UserAssigned`.
  AssignmentIdentity({
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

  factory AssignmentIdentity.fromMap(Map<String, dynamic> map) {
    return AssignmentIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

