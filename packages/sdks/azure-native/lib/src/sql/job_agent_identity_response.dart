// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_agent_user_assigned_identity_response.dart';

/// Azure Active Directory identity configuration for a resource.
class JobAgentIdentityResponse {
  /// The job agent identity tenant id
  final pulumi.Input<String>? tenantId;
  /// The job agent identity type
  final pulumi.Input<String> type;
  /// The resource ids of the user assigned identities to use
  final pulumi.Input<Map<String, JobAgentUserAssignedIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [JobAgentIdentityResponse].
  /// [tenantId] The job agent identity tenant id
  /// [type] The job agent identity type
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  const JobAgentIdentityResponse({
    this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantId': ?tenantId,
      'type': type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, JobAgentUserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<JobAgentUserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobAgentIdentityResponse.fromMap(Map<String, dynamic> map) {
    return JobAgentIdentityResponse(
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<JobAgentUserAssignedIdentityResponse>(guardedValue, (value) => JobAgentUserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
