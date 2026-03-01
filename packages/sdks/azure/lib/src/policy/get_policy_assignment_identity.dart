// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyAssignmentIdentity {
  /// A `identity_ids` block as defined below.
  final List<String> identityIds;
  /// The Principal ID of the Policy Assignment for this Resource.
  final String principalId;
  /// The Tenant ID of the Policy Assignment for this Resource.
  final String tenantId;
  /// The Type of Managed Identity which is added to this Policy Assignment.
  final String type;

  /// Creates a new [GetPolicyAssignmentIdentity].
  /// [identityIds] A `identity_ids` block as defined below.
  /// [principalId] The Principal ID of the Policy Assignment for this Resource.
  /// [tenantId] The Tenant ID of the Policy Assignment for this Resource.
  /// [type] The Type of Managed Identity which is added to this Policy Assignment.
  GetPolicyAssignmentIdentity({
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

  factory GetPolicyAssignmentIdentity.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

