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
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
