// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_agent_user_assigned_identity_response.dart';

/// Azure Active Directory identity configuration for a resource.
class JobAgentIdentityResponse {
  /// The job agent identity tenant id
  final String? tenantId;
  /// The job agent identity type
  final String type;
  /// The resource ids of the user assigned identities to use
  final Map<String, JobAgentUserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [JobAgentIdentityResponse].
  /// [tenantId] The job agent identity tenant id
  /// [type] The job agent identity type
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  JobAgentIdentityResponse({
    this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantId': ?tenantId,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<JobAgentUserAssignedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory JobAgentIdentityResponse.fromMap(Map<String, dynamic> map) {
    return JobAgentIdentityResponse(
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<JobAgentUserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => JobAgentUserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

