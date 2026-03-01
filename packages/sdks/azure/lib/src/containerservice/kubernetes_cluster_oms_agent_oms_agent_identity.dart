// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterOmsAgentOmsAgentIdentity {
  /// The Client ID of the user-defined Managed Identity used for Web App Routing.
  final String? clientId;
  /// The Object ID of the user-defined Managed Identity used for Web App Routing
  final String? objectId;
  /// The ID of the User Assigned Identity used for Web App Routing.
  final String? userAssignedIdentityId;

  /// Creates a new [KubernetesClusterOmsAgentOmsAgentIdentity].
  /// [clientId] The Client ID of the user-defined Managed Identity used for Web App Routing.
  /// [objectId] The Object ID of the user-defined Managed Identity used for Web App Routing
  /// [userAssignedIdentityId] The ID of the User Assigned Identity used for Web App Routing.
  KubernetesClusterOmsAgentOmsAgentIdentity({
    this.clientId,
    this.objectId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory KubernetesClusterOmsAgentOmsAgentIdentity.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterOmsAgentOmsAgentIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

