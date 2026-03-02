// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Active Directory identity configuration for a resource.
class JobAgentIdentity {
  /// The job agent identity tenant id
  final pulumi.Input<String>? tenantId;
  /// The job agent identity type
  final pulumi.Input<String> type;
  /// The resource ids of the user assigned identities to use
  final pulumi.Input<List<String>>? userAssignedIdentities;

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
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities']! as List).cast<String>()).input(),
    );
  }
}

