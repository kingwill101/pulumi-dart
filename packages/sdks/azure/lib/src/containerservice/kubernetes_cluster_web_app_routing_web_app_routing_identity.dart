// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterWebAppRoutingWebAppRoutingIdentity {
  /// The Client ID of the user-defined Managed Identity used for Web App Routing.
  final String? clientId;
  /// The Object ID of the user-defined Managed Identity used for Web App Routing
  final String? objectId;
  /// The ID of the User Assigned Identity used for Web App Routing.
  final String? userAssignedIdentityId;

  /// Creates a new [KubernetesClusterWebAppRoutingWebAppRoutingIdentity].
  /// [clientId] The Client ID of the user-defined Managed Identity used for Web App Routing.
  /// [objectId] The Object ID of the user-defined Managed Identity used for Web App Routing
  /// [userAssignedIdentityId] The ID of the User Assigned Identity used for Web App Routing.
  KubernetesClusterWebAppRoutingWebAppRoutingIdentity({
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

  factory KubernetesClusterWebAppRoutingWebAppRoutingIdentity.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterWebAppRoutingWebAppRoutingIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

