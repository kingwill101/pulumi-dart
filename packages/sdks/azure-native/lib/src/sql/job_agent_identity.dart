// ignore_for_file: unused_element, unnecessary_cast


/// Azure Active Directory identity configuration for a resource.
class JobAgentIdentity {
  /// The job agent identity tenant id
  final String? tenantId;
  /// The job agent identity type
  final String type;
  /// The resource ids of the user assigned identities to use
  final List<String>? userAssignedIdentities;

  /// Creates a new [JobAgentIdentity].
  /// [tenantId] The job agent identity tenant id
  /// [type] The job agent identity type
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  JobAgentIdentity({
    this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantId': ?tenantId,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory JobAgentIdentity.fromMap(Map<String, dynamic> map) {
    return JobAgentIdentity(
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

